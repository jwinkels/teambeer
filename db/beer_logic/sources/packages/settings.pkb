create or replace package body settings is
    function set_price(p_price number) return boolean
    is
    begin
        if p_price > 0 then
            return beer_data.set_price(p_price);
        else
            return false;
        end if;
    end set_price;
end;
/