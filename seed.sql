-- the psql COPY FROM syntax requires an **absolute path** to the file to import.
-- https://wiki.postgresql.org/wiki/COPY

COPY romlist (
  name,
  description,
  year,
  manufacturer,
  width,
  height,
  rotate
)
-- FROM '/full/path/to/your/roms.csv'
FROM '/Users/rd/code/mame-db/romlist.csv'
DELIMITER ';'
CSV HEADER;
