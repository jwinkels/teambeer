create or replace view drinks as 
select dates.day, player.name, quantity number_of_drinks, beer.created_by, dates.description, player.id
  from beer_data.beer join beer_data.dates on (beer.date_id = dates.id)
                      join beer_data.player on (beer.player_id = player.id);