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
        l_event beer_logic.dates%rowtype;
    begin
        logger.log(p_text=>'Drink a beer');
        l_event.id := apex_util.get_session_state( 
            p_item =>'P3_EVENT'
        );

        if l_event.id is null then
            l_event.description := apex_util.get_session_state( 
                p_item =>'P3_DATE_DESCRITPION'
            );
        end if;

        if not beer_logic.player.set_drinks( 
            player_id => apex_util.get_session_state( 
                p_item =>'APP_PLAYER_ID'
            ),
            event => l_event,
            quantity => apex_util.get_session_state( 
                p_item =>'P3_NUMBER_OF_DRINKS'
            ) 
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

    procedure load_drinks
    is
    begin

        apex_util.set_session_state( 
            p_name =>'P3_TODAY',
            p_value => 'Heute hattest du bisher: ' || beer_logic.player.get_drinks( 
                player_id => apex_util.get_session_state( 
                                                            p_item =>'APP_PLAYER_ID'
                                                        ),
                day => trunc(sysdate)
            ),
            p_commit => true 
        );
    end;
end;
/