CREATE TABLE cambio (
  id bigserial NOT NULL PRIMARY KEY,
  from_currency character varying NOT NULL,
  to_currency character varying NOT NULL,
  conversion_factor numeric(19,2) NOT NULL
);
