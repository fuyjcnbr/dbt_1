
##Сборка docker-образа

```console
foo@bar:~$ docker build --squash -t postgres_dbt -f Dockerfile.postgres .
```

##Запуск контейнера

```console
foo@bar:~$ nohup docker-compose up --force-recreate &
```

##Копируем файлы dbt в контейнер

```console
foo@bar:~$ docker cp dbt postgres_dbt_container:/
```

##Запускаем dbt модель в контейнере (из хоста)

```console
foo@bar:~$ docker exec -it postgres_dbt_container /bin/bash -c "dbt run --target prod --profiles-dir /dbt/.profiles --project-dir /dbt --model source1"
```

##Проверяем результат (из хоста)

```console
foo@bar:~$ docker exec -it postgres_dbt_container /bin/bash -c "psql -U user1 test_db -c \"select * from prod1_stg.source1\""
```



