INSERT INTO user_status(id, status) VALUES (1, 'Active');
INSERT INTO user_status(id, status) VALUES (2, 'Suspended');
INSERT INTO user_status(id, status) VALUES (3, 'Removed');

INSERT INTO authority(id, name) VALUES (1, 'USER_ROLE');
INSERT INTO authority(id, name) VALUES (2, 'USER_ADMIN');


INSERT INTO users(username, password, enabled) VALUES ('vikas', '$2a$10$3S61o/wSchPDduESyrUEyOjFqxwhrGcSEe2xr.aIOblVxcRR2ucmq', 1);
INSERT INTO users(username, password, enabled) VALUES ('surbhi', '$2a$10$bKdZm1YiWB4D6TmabTTuA.vuKcHf6U5XdV/nfA21VOXDxpPU2Bck2', 1);

INSERT INTO AUTHORITIES(username, authority) VALUES('vikas', 1);
INSERT INTO AUTHORITIES(username, authority) VALUES('surbhi', 1);
INSERT INTO AUTHORITIES(username, authority) VALUES('surbhi', 2);

INSERT INTO customer(id, first_name, last_name, phone) VALUES (1001, 'Vikas', 'Singh', 111);
INSERT INTO customer(id, first_name, last_name, phone) VALUES (2001, 'Surbhi', 'Chawla', 222);

INSERT INTO customer_address(id, street_address, city, pin_code, customer_id)
VALUES (10011, 'Progressive Society', 'Chandigarh', 160050, 1001);
INSERT INTO customer_address(id, street_address, city, pin_code, customer_id)
VALUES (20011, 'Pushpac Apartments', 'Chandigarh', 160049, 2001);