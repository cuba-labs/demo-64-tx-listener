-- begin DEMO_ORDER_LINE
alter table DEMO_ORDER_LINE add constraint FK_DEMO_ORDER_LINE_ORDER foreign key (ORDER_ID) references DEMO_ORDER(ID)^
create index IDX_DEMO_ORDER_LINE_ORDER on DEMO_ORDER_LINE (ORDER_ID)^
-- end DEMO_ORDER_LINE
