```
$ brew install mame
$ mame -listxml > mame.xml
$ ./vertical_roms > vertical_roms.csv
$ createdb mame
$ psql mame < schema.sqlf
$ psql mame < seed.sql
$ psql mame
mame=# select id, name, substr(description, 1, 30), year, substr(manufacturer, 1, 30), width, height from mame_roms order by year;
```

## spec/mame/fixtures/mame_sample.xml

for v0.196

```
$ cat mame.xml | less -N  # view mame.xml with line numbers
$ head -n 158 mame.xml | pbcopy  # doctype, element definitions, opening mame tag
$ sed -n '2882889,2883013p' mame.xml | pbcopy  # machine entry for pengo
$ tail -1 mame.xml  # closing mame tag
```
