create or replace package body player as
    function create_or_update(player in out beer_data.player%rowtype) return boolean
    is
    begin

      if player.fee is null then
        player.fee := 0;
      end if;

      if player.deposit is null then
        player.deposit := 0;
      end if;

      beer_data.player_api.create_or_update_row(player);
      return true;
      exception
        when others then
          return false;
    end create_or_update;

    function get_player(player_id beer_data.player.id%type) return beer_data.player%rowtype
    is
    begin
        return beer_data.player_api.read_row(player_id);
    exception
      when others then
        return null;
    end get_player;

    function change_player_deposit(player_id beer_data.player.id%type, value number) return number
    is
      l_actual_deposit beer_data.player.deposit%type;
    begin
      l_actual_deposit := beer_data.player_api.get_deposit(player_id);
      l_actual_deposit := l_actual_deposit + value;
      beer_data.player_api.set_deposit(player_id, l_actual_deposit);
      return l_actual_deposit;
    end change_player_deposit;

    function change_player_fee(player_id beer_data.player.id%type, value number) return number
    is
      l_actual_fee beer_data.player.fee%type;
    begin
      l_actual_fee := beer_data.player_api.get_fee(player_id);
      l_actual_fee := l_actual_fee + value;
      beer_data.player_api.set_fee(player_id, l_actual_fee);
      return l_actual_fee;
    end change_player_fee;
    
    function authenticate(p_username varchar2, p_password varchar2) return number
    is
      player beer_data.player%rowtype;
    begin
      player.id := beer_data.player_api.get_pk_by_unique_cols(p_username);
      player    := beer_data.player_api.read_row(player.id);

      if player.password = p_password and upper(player.login) = upper(p_username) then
        return player.id;
      else
        return null;
      end if;
    end authenticate;

    function pay_fees(player_id beer_data.player.id%type) return boolean
    is
      player beer_data.player%rowtype;
    begin
      player := beer_data.player_api.read_row(player_id);
      if player.fee > 0 then
        logger.log('Strafen vorhanden!');
        if change_player_fee(player.id, player.fee * (-1)) = 0 then
          logger.log('Strafen zurückgesetzt!');
          if change_player_deposit(player.id, player.fee * (-1)) = (player.deposit - player.fee) then
            logger.log('Guthaben angepasst!');
            return true;
          else
            player.deposit := change_player_deposit(player.id, player.deposit);
            return false;
          end if;
        else
          player.fee := change_player_fee(player.id, player.fee);
          return false;
        end if;
      else
        return false;
      end if;
    end pay_fees;

    function set_drinks(player_id beer_data.player.id%type, day beer_data.dates.day%type) return boolean
    is
      l_date beer_data.dates%rowtype;
      l_beer beer_data.beer%rowtype;
      l_price beer_data.settings.price%type;
      l_deposit number;
    begin

      select price
      into l_price 
      from beer_data.settings;

      logger.log(p_text=>'Got price: '||l_price);

      l_date.id := beer_data.dates_api.get_pk_by_unique_cols(trunc(day)); 
      if l_date.id is null then
        l_date.day := trunc(sysdate); 
        l_date.id := beer_data.dates_api.create_row(l_date);
        logger.log(p_text=>'Created a Date');
      end if;

      l_beer.date_id := l_date.id;
      l_beer.player_id := player_id;

      logger.log(p_text=>'Created Beer');
      beer_data.beer_api.create_or_update_row(l_beer);
      
      l_deposit := change_player_deposit(player_id, l_price * -1);
      logger.log(p_text=>'Charged Player');
      return true;
      exception when others then 
        return false;
    end set_drinks;
end;
/