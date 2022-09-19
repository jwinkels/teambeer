create or replace view p3_dates as 
select id, description || ' am ' || day event, day
  from beer_logic.dates
  order by day desc;