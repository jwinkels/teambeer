create or replace package player 
as
    function create_or_update(player in out beer_data.player%rowtype) return boolean;
    function get_player(player_id beer_data.player.id%type) return beer_data.player%rowtype;  
    function change_player_deposit(player_id beer_data.player.id%type, value number) return number;
    function change_player_fee(player_id beer_data.player.id%type, value number) return number;
    function authenticate(p_username varchar2, p_password varchar2) return number;
    function pay_fees(player_id beer_data.player.id%type) return boolean;
    function set_drinks(player_id beer_data.player.id%type, day beer_data.dates.day%type) return boolean;
end player;
/