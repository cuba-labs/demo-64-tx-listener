-- begin DEMO_ORDER
create table DEMO_ORDER (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    DATE_ date not null,
    DISCOUNT decimal(19, 2) not null,
    AMOUNT decimal(19, 2) not null,
    --
    primary key (ID)
)^-- end DEMO_ORDER

-- begin DEMO_ORDER_LINE
create table DEMO_ORDER_LINE (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    ORDER_ID varchar(36),
    PRODUCT varchar(255),
    PRICE decimal(19, 2) not null,
    QUANTITY decimal(19, 2) not null,
    --
    primary key (ID)
)^
-- end DEMO_ORDER_LINE
