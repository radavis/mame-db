DROP TABLE IF EXISTS mame_roms;
CREATE table mame_roms (
  id SERIAL,
  name CHARACTER VARYING,
  description CHARACTER VARYING,
  year CHARACTER VARYING,
  manufacturer CHARACTER VARYING,
  width CHARACTER VARYING,
  height CHARACTER VARYING
);