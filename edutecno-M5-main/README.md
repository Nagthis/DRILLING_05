# Diccionario de datos de la base de datos dvdrental

## Tabla: actor
### Concurrencia: baja

| column\_name | data\_type                  | is\_nullable | max\_length |
| :----------- | :-------------------------- | :----------- | :---------- |
| last\_name   | character varying           | NO           | 45          |
| last\_update | timestamp without time zone | NO           | null        |
| first\_name  | character varying           | NO           | 45          |
| actor\_id    | integer                     | NO           | null        |

## Vista: actor\_info
### Concurrencia: baja

| table\_name | column\_name | data\_type        | is\_nullable | max\_length |
| :---------- | :----------- | :---------------- | :----------- | :---------- |
| actor\_info | actor\_id    | integer           | YES          | null        |
| actor\_info | last\_name   | character varying | YES          | 45          |
| actor\_info | first\_name  | character varying | YES          | 45          |
| actor\_info | film\_info   | text              | YES          | null        |

## Tabla: address
### Concurrencia: baja

| column\_name | data\_type                  | is\_nullable | max\_length |
| :----------- | :-------------------------- | :----------- | :---------- |
| last\_update | timestamp without time zone | NO           | null        |
| address2     | character varying           | YES          | 50          |
| city\_id     | smallint                    | NO           | null        |
| district     | character varying           | NO           | 20          |
| postal\_code | character varying           | YES          | 10          |
| phone        | character varying           | NO           | 20          |
| address      | character varying           | NO           | 50          |
| address\_id  | integer                     | NO           | null        |

## Tabla: category
### Concurrencia: alta

| column\_name | data\_type                  | is\_nullable | max\_length |
| :----------- | :-------------------------- | :----------- | :---------- |
| last\_update | timestamp without time zone | NO           | null        |
| category\_id | integer                     | NO           | null        |
| name         | character varying           | NO           | 25          |

## Tabla: city
### Concurrencia: baja

| column\_name | data\_type                  | is\_nullable | max\_length |
| :----------- | :-------------------------- | :----------- | :---------- |
| country\_id  | smallint                    | NO           | null        |
| last\_update | timestamp without time zone | NO           | null        |
| city         | character varying           | NO           | 50          |
| city\_id     | integer                     | NO           | null        |

## Tabla: country
### Concurrencia: alta

| column\_name | data\_type                  | is\_nullable | max\_length |
| :----------- | :-------------------------- | :----------- | :---------- |
| country      | character varying           | NO           | 50          |
| last\_update | timestamp without time zone | NO           | null        |
| country\_id  | integer                     | NO           | null        |

## Tabla: customer
### Concurrencia: alta

| column\_name | data\_type                  | is\_nullable | max\_length |
| :----------- | :-------------------------- | :----------- | :---------- |
| last\_update | timestamp without time zone | YES          | null        |
| active       | integer                     | YES          | null        |
| address\_id  | smallint                    | NO           | null        |
| store\_id    | smallint                    | NO           | null        |
| first\_name  | character varying           | NO           | 45          |
| customer\_id | integer                     | NO           | null        |
| activebool   | boolean                     | NO           | null        |
| create\_date | date                        | NO           | null        |
| email        | character varying           | YES          | 50          |
| last\_name   | character varying           | NO           | 45          |

## Vista: customer_list
### Concurrencia: alta

| column\_name | data\_type        | is\_nullable | max\_length |
| :----------- | :---------------- | :----------- | :---------- |
| notes        | text              | YES          | null        |
| id           | integer           | YES          | null        |
| zip code     | character varying | YES          | 10          |
| country      | character varying | YES          | 50          |
| city         | character varying | YES          | 50          |
| name         | text              | YES          | null        |
| phone        | character varying | YES          | 20          |
| address      | character varying | YES          | 50          |
| sid          | smallint          | YES          | null        |

## Tabla: film
### Concurrencia: alta

| column\_name      | data\_type                  | is\_nullable | max\_length |
| :---------------- | :-------------------------- | :----------- | :---------- |
| title             | character varying           | NO           | 255         |
| last\_update      | timestamp without time zone | NO           | null        |
| rental\_duration  | smallint                    | NO           | null        |
| language\_id      | smallint                    | NO           | null        |
| length            | smallint                    | YES          | null        |
| fulltext          | tsvector                    | NO           | null        |
| replacement\_cost | numeric                     | NO           | null        |
| rental\_rate      | numeric                     | NO           | null        |
| description       | text                        | YES          | null        |
| film\_id          | integer                     | NO           | null        |
| release\_year     | integer                     | YES          | null        |
| special\_features | ARRAY                       | YES          | null        |
| rating            | USER-DEFINED                | YES          | null        |

## Tabla: film_actor
### Concurrencia: alta

| column\_name | data\_type                  | is\_nullable | max\_length |
| :----------- | :-------------------------- | :----------- | :---------- |
| last\_update | timestamp without time zone | NO           | null        |
| film\_id     | smallint                    | NO           | null        |
| actor\_id    | smallint                    | NO           | null        |

## Tabla: film_category
### Concurrencia: alta

| column\_name | data\_type                  | is\_nullable | max\_length |
| :----------- | :-------------------------- | :----------- | :---------- |
| category\_id | smallint                    | NO           | null        |
| film\_id     | smallint                    | NO           | null        |
| last\_update | timestamp without time zone | NO           | null        |

## Vista: film_list
### Concurrencia: alta

| column\_name | data\_type        | is\_nullable | max\_length |
| :----------- | :---------------- | :----------- | :---------- |
| price        | numeric           | YES          | null        |
| length       | smallint          | YES          | null        |
| description  | text              | YES          | null        |
| rating       | USER-DEFINED      | YES          | null        |
| fid          | integer           | YES          | null        |
| category     | character varying | YES          | 25          |
| title        | character varying | YES          | 255         |
| actors       | text              | YES          | null        |

## Tabla: inventory
### Concurrencia: alta

| column\_name  | data\_type                  | is\_nullable | max\_length |
| :------------ | :-------------------------- | :----------- | :---------- |
| film\_id      | smallint                    | NO           | null        |
| last\_update  | timestamp without time zone | NO           | null        |
| inventory\_id | integer                     | NO           | null        |
| store\_id     | smallint                    | NO           | null        |

## Tabla: language
### Concurrencia: alta

| column\_name | data\_type                  | is\_nullable | max\_length |
| :----------- | :-------------------------- | :----------- | :---------- |
| name         | character                   | NO           | 20          |
| language\_id | integer                     | NO           | null        |
| last\_update | timestamp without time zone | NO           | null        |

## Vista: nicer_but_slower_film_list
### Concurrencia: baja

| column\_name | data\_type        | is\_nullable | max\_length |
| :----------- | :---------------- | :----------- | :---------- |
| length       | smallint          | YES          | null        |
| category     | character varying | YES          | 25          |
| description  | text              | YES          | null        |
| price        | numeric           | YES          | null        |
| actors       | text              | YES          | null        |
| fid          | integer           | YES          | null        |
| rating       | USER-DEFINED      | YES          | null        |
| title        | character varying | YES          | 255         |

## Tabla: payment
### Concurrencia: alta

| column\_name  | data\_type                  | is\_nullable | max\_length |
| :------------ | :-------------------------- | :----------- | :---------- |
| rental\_id    | integer                     | NO           | null        |
| payment\_date | timestamp without time zone | NO           | null        |
| customer\_id  | smallint                    | NO           | null        |
| amount        | numeric                     | NO           | null        |
| staff\_id     | smallint                    | NO           | null        |
| payment\_id   | integer                     | NO           | null        |

## Tabla: rental
### Concurrencia: alta

| column\_name  | data\_type                  | is\_nullable | max\_length |
| :------------ | :-------------------------- | :----------- | :---------- |
| rental\_date  | timestamp without time zone | NO           | null        |
| customer\_id  | smallint                    | NO           | null        |
| inventory\_id | integer                     | NO           | null        |
| return\_date  | timestamp without time zone | YES          | null        |
| last\_update  | timestamp without time zone | NO           | null        |
| rental\_id    | integer                     | NO           | null        |
| staff\_id     | smallint                    | NO           | null        |

## Vista: sales_by_film_category
### Concurrencia: baja

| column\_name | data\_type        | is\_nullable | max\_length |
| :----------- | :---------------- | :----------- | :---------- |
| category     | character varying | YES          | 25          |
| total\_sales | numeric           | YES          | null        |

## Vista: sales_by_store
### Concurrencia: baja


| column\_name | data\_type | is\_nullable | max\_length |
| :----------- | :--------- | :----------- | :---------- |
| total\_sales | numeric    | YES          | null        |
| store        | text       | YES          | null        |
| manager      | text       | YES          | null        |

## Tabla: staff
### Concurrencia: alta

| column\_name | data\_type                  | is\_nullable | max\_length |
| :----------- | :-------------------------- | :----------- | :---------- |
| last\_name   | character varying           | NO           | 45          |
| staff\_id    | integer                     | NO           | null        |
| address\_id  | smallint                    | NO           | null        |
| password     | character varying           | YES          | 40          |
| store\_id    | smallint                    | NO           | null        |
| active       | boolean                     | NO           | null        |
| picture      | bytea                       | YES          | null        |
| last\_update | timestamp without time zone | NO           | null        |
| username     | character varying           | NO           | 16          |
| first\_name  | character varying           | NO           | 45          |
| email        | character varying           | YES          | 50          |

## Vista: staff_list
### Concurrencia: baja

| column\_name | data\_type        | is\_nullable | max\_length |
| :----------- | :---------------- | :----------- | :---------- |
| name         | text              | YES          | null        |
| address      | character varying | YES          | 50          |
| sid          | smallint          | YES          | null        |
| country      | character varying | YES          | 50          |
| id           | integer           | YES          | null        |
| city         | character varying | YES          | 50          |
| zip code     | character varying | YES          | 10          |
| phone        | character varying | YES          | 20          |

## Tabla: store
### Concurrencia: alta

| column\_name       | data\_type                  | is\_nullable | max\_length |
| :----------------- | :-------------------------- | :----------- | :---------- |
| last\_update       | timestamp without time zone | NO           | null        |
| manager\_staff\_id | smallint                    | NO           | null        |
| address\_id        | smallint                    | NO           | null        |
| store\_id          | integer                     | NO           | null        |
