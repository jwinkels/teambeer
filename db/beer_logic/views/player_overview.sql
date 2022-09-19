create or replace view player_overview as 
select id, 
       name, 
       deposit, 
       fee,
       deposit - fee balance, 
       login, 
       admin
  from beer_data.player;