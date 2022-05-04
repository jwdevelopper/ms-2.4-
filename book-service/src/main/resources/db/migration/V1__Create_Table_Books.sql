CREATE TABLE book (
  id bigserial NOT NULL PRIMARY KEY,
  author character varying,
  launch_date date NOT NULL,
  price numeric(19,2) NOT NULL,
  title character varying
);
