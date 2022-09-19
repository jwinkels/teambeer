create or replace package event is
    function date_exists(event beer_data.dates.day%type) return boolean;
    function get_date(event beer_data.dates.day%type) return beer_data.dates%rowtype;
end;
/