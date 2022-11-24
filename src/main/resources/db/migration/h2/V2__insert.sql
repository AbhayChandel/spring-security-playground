INSERT INTO user_status(id, status) VALUES (1, 'Active');
INSERT INTO user_status(id, status) VALUES (2, 'Suspended');
INSERT INTO user_status(id, status) VALUES (3, 'Removed');

INSERT INTO users(id, username, password, status) VALUES (1001, 'vikas', '$2a$10$3S61o/wSchPDduESyrUEyOjFqxwhrGcSEe2xr.aIOblVxcRR2ucmq', 1);
INSERT INTO users(id, username, password, status) VALUES (1002, 'surbhi', '$2a$10$bKdZm1YiWB4D6TmabTTuA.vuKcHf6U5XdV/nfA21VOXDxpPU2Bck2', 1);

INSERT INTO customer(id, first_name, last_name, phone) VALUES (1001, 'Vikas', 'Singh', 111);
INSERT INTO customer(id, first_name, last_name, phone) VALUES (2001, 'Surbhi', 'Chawla', 222);

INSERT INTO customer_address(id, street_address, city, pin_code, customer_id)
VALUES (10011, 'Progressive Society', 'Chandigarh', 160050, 1001);
INSERT INTO customer_address(id, street_address, city, pin_code, customer_id)
VALUES (20011, 'Pushpac Apartments', 'Chandigarh', 160049, 2001);