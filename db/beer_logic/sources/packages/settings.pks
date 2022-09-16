create or replace package settings is

    function set_price(p_price number) return boolean;
end;
/