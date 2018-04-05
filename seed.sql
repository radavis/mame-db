COPY mame_roms (
  name,
  description,
  year,
  manufacturer,
  width,
  height
)
FROM '/Users/rd/code/vertical-roms/vertical_roms.csv'
DELIMITER ';'
CSV HEADER;
