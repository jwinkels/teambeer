create table player(
    id          number not null,
    login       varchar2(50 CHAR) not null,
    password    varchar2(100 CHAR) not null,
    name        varchar2(30 CHAR) not null,
    deposit     number(12,2),
    fee         number(12,2),
    admin       varchar2(1 CHAR) default "'N'",
    created_by  varchar2(30 CHAR),
    created_at  date,
    updated_by  varchar2(30 CHAR),
    updated_at  date,

    constraint player_pk primary key(id),
    constraint player_uq unique(login)
);