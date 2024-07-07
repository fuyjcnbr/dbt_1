

insert into prod1_dds.table3
select key_
    ,val
     ,null as val2
    ,ts
from prod1_dds.table3_bkp;
