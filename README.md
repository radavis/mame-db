# mame-db

Build a list of roms supported by MAME, and insert them into a database.

## Requirements

* ruby & nokogiri
* postresql
* mame

## Instructions

```
$ brew install mame  # or sudo apt-get install mame
$ mame -listxml > romlist.xml
$ ./xml2csv romlist.xml > romlist.csv
$ createdb mame
$ psql mame < schema.sql
$ psql mame < seed.sql
$ psql mame
```

## Queries

```sql
-- Vertical roms from 1986
select
  id,
  name,
  substr(description, 1, 30) as description,
  year, substr(manufacturer, 1, 30) as manufacturer,
  width,
  height,
  rotate
from romlist
where
  year = '1986' and
  (rotate = 90 or rotate = 270)
order by
  year,
  name;
```
