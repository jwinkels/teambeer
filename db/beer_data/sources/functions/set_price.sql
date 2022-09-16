create or replace function set_price (p_price number) return boolean
is
begin
  update settings set price = p_price;
  return true;
  exception
    when others then
      logger.log(p_text=>'Set price failed', p_extra=>sqlerrm);
      return false;
end set_price;
/