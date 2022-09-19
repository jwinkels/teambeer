create table beer(
    id              number not null, 
    date_id         number not null,
    player_id       number not null,
    quantity        number(30),
    created_by  varchar2(30 CHAR),
    created_at  date,
    updated_by  varchar2(30 CHAR),
    updated_at  date,

    constraint beer_pk primary key(id),
    constraint beers_uq unique (date_id, player_id),
    constraint beers_date_id_fk foreign key (date_id) references dates (id) on delete cascade,
    constraint beers_player_id_fk foreign key (player_id) references player (id) on delete cascade

);