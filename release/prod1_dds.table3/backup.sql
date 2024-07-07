
alter table prod1_dds.table3 rename to table3_bkp;

create table prod1_dds.table3 (
    key_ int
    ,val text
    ,val2 text
    ,ts timestamp
);
