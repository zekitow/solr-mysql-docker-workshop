# Solr Workshop - Hands on!

* Install via docker

```
  docker-compose up
```

* Load the dump into mysql container

```
  docker exec -i solrmysqldockerworkshop_db_1 mysql -usolr_workshop -psolr_workshop sample < db/resources/schema.sql
```

