create or replace package body settings_edit is
    procedure load_settings
    is
        settings beer_logic.settings_list%rowtype;
    begin
        select *
        into settings 
        from beer_logic.settings_list;

        apex_util.set_session_state( 
            p_name => 'P20_PREIS',
            p_value => settings.price,
            p_commit => true
        );

        exception
          when no_data_found then
            apex_util.set_session_state( 
                p_name => 'P20_PREIS',
                p_value => null,
                p_commit => true
            );

    end load_settings;
    
    procedure save_settings
    is
    begin
      if not beer_logic.settings.set_price(apex_util.get_session_state( 
        p_item =>'P20_PREIS'
      )) then
        apex_error.add_error( 
            p_message =>'Preis konnte nicht geändert werden!',
            p_display_location => apex_error.c_inline_in_notification
        );
      end if;
    end save_settings;
end;
/