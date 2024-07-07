
create schema prod1_stg;
create schema prod1_dds;

create table prod1_stg.source1 (
    key_ int
    ,val text
    ,ts timestamp
);

create table prod1_dds.table1 (
    key_ int
    ,val text
    ,ts timestamp
);

create table prod1_dds.table3 (
    key_ int
    ,val text
    ,ts timestamp
);

insert into prod1_dds.table3
select 1 as key_
    ,'gaga' as val
    ,current_timestamp as ts;
