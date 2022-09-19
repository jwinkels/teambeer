create or replace function set_price (p_price number) return boolean
is
  l_rows number;
begin
  
  select count(*)
  into l_rows
  from settings;
  
  if l_rows = 1 then
    update settings set price = p_price;
  else
    insert into settings(price) values(p_price);
  end if;
  
  return true;
  
  exception
    when others then
      logger.log(p_text=>'Set price failed', p_extra=>sqlerrm);
      return false;
end set_price;
/