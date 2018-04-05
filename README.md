```
$ brew install mame
$ mame -listxml > mame.xml
$ ./vertical_roms > vertical_roms.csv
$ createdb mame
$ psql mame < schema.sql
$ psql mame < seed.sql
$ psql mame
mame=# select id, name, substr(description, 1, 30), year, substr(manufacturer, 1, 30), width, height from mame_roms order by year;
```
