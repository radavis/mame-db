DROP TABLE IF EXISTS romlist;
CREATE table romlist (
  id SERIAL,
  name CHARACTER VARYING,
  description CHARACTER VARYING,
  year CHARACTER VARYING,
  manufacturer CHARACTER VARYING,
  width INTEGER,
  height INTEGER,
  rotate INTEGER
);
