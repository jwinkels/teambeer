create or replace package body player_edit is
    procedure save
    is
        player beer_logic.players%rowtype;
    begin
        player.name := apex_util.get_session_state( 
            p_item =>'P11_NAME'
        );

        player.admin := apex_util.get_session_state( 
            p_item =>'P11_ADMIN'
        );

        player.login := apex_util.get_session_state( 
            p_item =>'P11_LOGIN'
        );

        player.password := apex_util.get_session_state( 
            p_item =>'P11_PASSWORD'
        );

        if not beer_logic.player.create_or_update( 
            player => player
        ) then
            apex_error.add_error( 
                p_message =>'Fehler beim anlegen eines Spielers',
                p_display_location => apex_error.c_inline_in_notification
            );
        end if;
    end;

    procedure save_deposit
    is
        l_new_deposit_value beer_logic.players.deposit%type;
    begin
        l_new_deposit_value := beer_logic.player.change_player_deposit( 
            player_id => apex_util.get_session_state( 
                p_item =>'P12_PLAYER_ID'
            ),
            value => apex_util.get_session_state( 
                p_item =>'P12_BETRAG'
            ) 
        );

        exception
          when others then
            apex_error.add_error( 
                p_message =>'Fehler beim Ändern des Budgets',
                p_display_location => apex_error.c_inline_in_notification
            );
    end;

    procedure save_fee
    is
        l_new_deposit_value beer_logic.players.deposit%type;
    begin
        l_new_deposit_value := beer_logic.player.change_player_fee( 
            player_id => apex_util.get_session_state( 
                p_item =>'P13_PLAYER_ID'
            ),
            value => apex_util.get_session_state( 
                p_item =>'P13_BETRAG'
            ) 
        );

        exception
          when others then
            apex_error.add_error( 
                p_message =>'Fehler beim Ändern des Strafkontos',
                p_display_location => apex_error.c_inline_in_notification
            );
    end;

    procedure pay_fees
    is
    begin
        if not beer_logic.player.pay_fees( 
            player_id => apex_util.get_session_state( 
                p_item =>'APP_PLAYER_ID'
            )
        ) then
           apex_error.add_error( 
                p_message =>'Fehler bezahlen der Strafen oder keine offenen Strafen',
                p_display_location => apex_error.c_inline_in_notification
            );
        end if;
    end;

    procedure drink
    is
    begin
        logger.log(p_text=>'Drink a beer');
        if not beer_logic.player.set_drinks( 
            player_id => apex_util.get_session_state( 
                p_item =>'APP_PLAYER_ID'
            ),
            day => sysdate 
        ) then
            apex_error.add_error( 
                p_message =>'Kein Bier mehr für dich!',
                p_display_location => apex_error.c_inline_in_notification
            );

            htp.p(json_object_t('{"status": false}').to_string);
        else
            htp.p(json_object_t('{"status": true }').to_string);
        end if;
    end;
end;
/