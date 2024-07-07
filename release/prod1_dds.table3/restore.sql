
create table prod1_dds.table3 (
    key_ int
    ,val text
    ,ts timestamp
);

insert into prod1_dds.table3
select *
from prod1_dds.table3_bkp;
