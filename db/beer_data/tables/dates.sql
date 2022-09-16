create table dates(
    id              number not null,
    day             date not null,
    description     varchar2(100 CHAR),
    /*special_price   number(10,2),*/
    created_by  varchar2(30 CHAR),
    created_at  date,
    updated_by  varchar2(30 CHAR),
    updated_at  date,

    constraint dates_pk primary key(id),
    constraint dates_uq unique (day)
);