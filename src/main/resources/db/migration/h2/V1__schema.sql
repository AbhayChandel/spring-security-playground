-- noinspection SqlNoDataSourceInspectionForFile
CREATE TABLE user_status
(
    id integer NOT NULL,
    status character varying NOT NULL,
    PRIMARY KEY (id)
);

CREATE SEQUENCE user_id_seq;
CREATE TABLE users
(
    id bigint NOT NULL,
    username character varying,
    password character varying,
    status bigint NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (status)
        REFERENCES user_status (id)
);

CREATE SEQUENCE customer_id_seq;
CREATE TABLE customer
(
    id bigint NOT NULL,
    first_name character varying,
    last_name character varying,
    phone character varying,
    PRIMARY KEY (id)
);

CREATE SEQUENCE customer_address_id_seq;
CREATE TABLE customer_address
(
    id bigint NOT NULL,
    street_address character varying NOT NULL,
    city character varying NOT NULL,
    pin_code integer NOT NULL,
    customer_id bigint NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (customer_id)
        REFERENCES customer (id)
);