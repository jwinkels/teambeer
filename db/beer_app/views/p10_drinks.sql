create or replace view p10_drinks as 
select '' USER_AVATAR, 
        name USER_NAME,
        day EVENT_DATE,
        description EVENT_TYPE,
        number_of_drinks EVENT_TITLE,
        null EVENT_DESC
  from beer_logic.drinks
  order by day desc;