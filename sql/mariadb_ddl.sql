create table SPRING_SESSION
(
    PRIMARY_ID            char(36)     not null primary key,
    SESSION_ID            char(36)     not null,
    CREATION_TIME         bigint       not null,
    LAST_ACCESS_TIME      bigint       not null,
    MAX_INACTIVE_INTERVAL int          not null,
    EXPIRY_TIME           bigint       not null,
    PRINCIPAL_NAME        varchar(100) null,
    constraint SPRING_SESSION_IX1
        unique (SESSION_ID)
)
    row_format = DYNAMIC;

create index SPRING_SESSION_IX2
    on SPRING_SESSION (EXPIRY_TIME);

create index SPRING_SESSION_IX3
    on SPRING_SESSION (PRINCIPAL_NAME);

create table SPRING_SESSION_ATTRIBUTES
(
    SESSION_PRIMARY_ID char(36)     not null,
    ATTRIBUTE_NAME     varchar(200) not null,
    ATTRIBUTE_BYTES    blob         not null,
    primary key (SESSION_PRIMARY_ID, ATTRIBUTE_NAME),
    constraint SPRING_SESSION_ATTRIBUTES_FK
        foreign key (SESSION_PRIMARY_ID) references SPRING_SESSION (PRIMARY_ID)
            on delete cascade
)
    row_format = DYNAMIC;

create table posts
(
    id            bigint auto_increment primary key,
    created_date  datetime     null,
    modified_date datetime     null,
    author        varchar(255) null,
    content       text         not null,
    title         varchar(500) not null
);

create table users
(
    id            bigint auto_increment primary key,
    created_date  datetime     null,
    modified_date datetime     null,
    email         varchar(255) not null,
    name          varchar(255) not null,
    picture       varchar(255) null,
    role          varchar(255) not null
);

