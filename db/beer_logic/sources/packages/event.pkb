create or replace package body event is
    function date_exists(event beer_data.dates.day%type) return boolean
    is
        l_date beer_data.dates%rowtype;
    begin
        l_date.id := beer_data.dates_api.get_pk_by_unique_cols(p_day => event);
        if l_date.id is not null then
            return true;
        else
            return false;
        end if;
    end date_exists;

    function get_date(event beer_data.dates.day%type) return beer_data.dates%rowtype
    is
        l_date beer_data.dates%rowtype;
    begin
        if date_exists(event) then
            l_date.id := beer_data.dates_api.get_pk_by_unique_cols(p_day => event);
            l_date    := beer_data.dates_api.read_row(l_date.id);
        end if;

        return l_date;
    end get_date;
end;
/