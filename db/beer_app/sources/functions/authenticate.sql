create or replace function authenticate (p_username varchar2, p_password varchar2) return boolean
is
    l_player_id number;
begin
    l_player_id := beer_logic.player.authenticate(p_username, p_password);
    if l_player_id is not null then
        apex_util.set_session_state( 
            p_name =>'APP_PLAYER_ID',
            p_value => l_player_id,
            p_commit => true
        );

        return true;
    else
        return false;
    end if;
end authenticate;
/