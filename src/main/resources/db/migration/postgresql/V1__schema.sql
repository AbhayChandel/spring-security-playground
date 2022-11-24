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

CREATE TABLE role
(
    id integer NOT NULL,
    name character varying NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE user_role
   (
		user_id bigint,
        role_id bigint,
        PRIMARY KEY (user_id, role_id),
        FOREIGN KEY (user_id) REFERENCES users(id),
        FOREIGN KEY (role_id) REFERENCES role(id)
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