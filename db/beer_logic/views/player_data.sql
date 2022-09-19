create or replace view player_data as 
select player.id, 
       name, 
       deposit, 
       fee,
       deposit - fee balance, 
       login, 
       admin,
       quantity,
       max(dates.day) last_event
  from beer_data.player join beer_data.beer on (player.id = beer.player_id)
              join beer_data.dates on (beer.date_id = dates.id)
  group by player.id, name, deposit, fee, deposit - fee, login, admin, quantity;