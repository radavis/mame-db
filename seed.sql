-- the psql COPY FROM syntax requires an **absolute path** to the file to import.
-- https://wiki.postgresql.org/wiki/COPY

COPY mame_roms (
  name,
  description,
  year,
  manufacturer,
  width,
  height
)
-- FROM '/path/to/your/roms.csv'
FROM '/Users/rd/code/vertical-roms/romlist.csv'
DELIMITER ';'
CSV HEADER;
