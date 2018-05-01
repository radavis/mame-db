# Vertical Roms

Build a list of vertical roms supported by MAME, and insert them into a database.

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

## Query

```sql
select
  id,
  name,
  substr(description, 1, 30) as desc,
  year, substr(manufacturer, 1, 30) as mfg,
  width,
  height
from mame_roms
order by
  year,
  name;
```

```
id  |   name   |              desc              | year  |              mfg               | width | height
------+----------+--------------------------------+-------+--------------------------------+-------+--------
306 | galgame  | Galaxy Game                    | 1971  | Computer Recreations, Inc      | 512   | 512
395 | indy800  | Indy 800 [TTL]                 | 1975  | Atari/Kee                      | 858   | 525
118 | breakout | Breakout [TTL]                 | 1976  | Atari                          | 858   | 525
460 | lagunar  | Laguna Racer                   | 1977  | Midway                         | 260   | 224
844 | superbug | Super Bug                      | 1977  | Atari (Kee Games)              | 320   | 240
114 | bowl3d   | 3-D Bowling                    | 1978  | Meadows Games, Inc.            | 256   | 224
115 | bowler   | Bowling Alley                  | 1978  | Midway                         | 260   | 224
280 | firetrk  | Fire Truck / Smokey Joe        | 1978  | Atari                          | 320   | 240
320 | geebee   | Gee Bee (Japan)                | 1978  | Namco                          | 272   | 224
398 | invaders | Space Invaders / Space Invader | 1978  | Taito / Midway                 | 260   | 224
511 | mgolf    | Atari Mini Golf (prototype)    | 1978  | Atari                          | 256   | 224
727 | sbrkout  | Super Breakout (rev 04)        | 1978  | Atari                          | 256   | 224
751 | shuffle  | Shuffleboard                   | 1978  | Midway                         | 260   | 224
820 | sstrangr | Space Stranger                 | 1978  | Yachiyo Electronics, Ltd.      | 256   | 224
 38 | andromed | Andromeda (Japan?)             | 1979  | IPM                            | 240   | 224
 56 | astrof   | Astro Fighter (set 1)          | 1979  | Data East                      | 256   | 256
 69 | barrier  | Barrier                        | 1979  | Cinematronics (Vectorbeam lice |       |
 78 | beaminv  | Beam Invader                   | 1979  | Teknon Kogyo                   | 248   | 216
107 | bombbee  | Bomb Bee                       | 1979  | Namco                          | 272   | 224
133 | carhntds | Car Hunt / Deep Scan (France)  | 1979  | Sega                           | 256   | 224
169 | cosmica  | Cosmic Alien (version II)      | 1979  | Universal                      | 256   | 192
170 | cosmicg  | Cosmic Guerilla                | 1979  | Universal                      | 256   | 192
171 | cosmo    | Cosmo                          | 1979  | TDS & MINTS                    | 260   | 224
179 | cutieq   | Cutie Q                        | 1979  | Namco                          | 272   | 224
182 | dai3wksi | Dai San Wakusei Meteor (Japan) | 1979  | Sun Electronics                | 248   | 240
272 | fgoal    | Field Goal (set 1)             | 1979  | Taito                          | 256   | 240
274 | fi6845   | Fast Invaders (6845 version)   | 1979  | Fiberglass                     | 640   | 266
303 | galaxia  | Galaxia (set 1)                | 1979  | Zaccaria / Zelco               | 240   | 240
304 | galaxian | Galaxian (Namco set 1)         | 1979  | Namco                          | 768   | 224
314 | galxwars | Galaxy Wars (Universal set 1)  | 1979  | Universal                      | 260   | 224
365 | headoni  | Head On (Irem, M-15 Hardware)  | 1979  | Irem                           | 256   | 224
367 | heiankyo | Heiankyo Alien                 | 1979  | Denki Onkyo                    | 256   | 224
370 | highsplt | Space Fever High Splitter (set | 1979  | Nintendo                       | 256   | 224
399 | invadpt2 | Space Invaders Part II (Taito) | 1979  | Taito                          | 260   | 224
400 | invds    | Invinco / Deep Scan            | 1979  | Sega                           | 256   | 224
401 | invho2   | Invinco / Head On 2            | 1979  | Sega                           | 256   | 224
402 | invinco  | Invinco                        | 1979  | Sega                           | 256   | 224
406 | ipminvad | IPM Invader                    | 1979  | IPM                            | 240   | 224
478 | lrescue  | Lunar Rescue                   | 1979  | Taito                          | 260   | 224
520 | mmagic   | Monkey Magic                   | 1979  | Nintendo                       | 256   | 192
526 | montecar | Monte Carlo                    | 1979  | Atari                          | 320   | 240
...
```
