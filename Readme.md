
##Сборка и запуск docker-образа

```console
foo@bar:~$ docker build --squash -t gp_dbt -f Dockerfile .

foo@bar:~$ docker build --squash -t postgres_dbt -f Dockerfile.postgres .

foo@bar:~$ docker run -it postgres_dbt /bin/bash


foo@bar:~$ nohup docker-compose up --force-recreate &

docker cp dbt postgres_dbt_container:/

docker exec -it postgres_dbt_container /bin/bash -c "dbt run --target prod --profiles-dir /dbt/.profiles --project-dir /dbt --model source1"





docker exec -it postgres_dbt_container /bin/bash

foo@bar:~$ dbt run --target prod --profiles-dir /dbt/.profiles --project-dir /dbt --model source1


```


docker exec -it postgres_dbt_container /bin/bash -c "dbt run --target prod --profiles-dir /dbt/.profiles --project-dir /dbt --model source1"


docker exec -it postgres_dbt_container /bin/bash -c "psql -U user1 test_db -c \"select * from prod1_dds.table3\""



get prev command exit code
echo $?




psql -U user1 test_db -c "select * from postgres_stg.source1"




docker container stop postgres_dbt

docker cp prod1.sql postgres_dbt_container:/

docker cp dbt postgres_dbt_container:/



https://www.greenplumdba.com/installing-greenplum-database



docker build -t gp_dbt -f Dockerfile .


docker run -it a6a7481354ac /bin/bash

docker run -it postgres_dbt:latest /bin/bash

docker run -it postgres_dbt /bin/bash




