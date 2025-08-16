use inventory;

INSERT INTO customers (id, first_name, last_name, email) VALUES (1005, 'Test', 'User', 'email');
INSERT INTO customers (id, first_name, last_name, email) VALUES (1006, 'Test', 'User', 'email1');
INSERT INTO customers (id, first_name, last_name, email) VALUES (1007, 'Test', 'User', 'email2');
INSERT INTO customers (id, first_name, last_name, email) VALUES (1008, 'Test', 'User', 'email3');
INSERT INTO customers (id, first_name, last_name, email) VALUES (1009, 'Test', 'User', 'email4');
INSERT INTO customers (id, first_name, last_name, email) VALUES (1010, 'Test', 'User', 'email5');
INSERT INTO customers (id, first_name, last_name, email) VALUES (1011, 'Test', 'User', 'email32623');
INSERT INTO customers (id, first_name, last_name, email) VALUES (1010, 'Test', 'User', 'email523');

SHOW VARIABLES LIKE 'log_bin';
SHOW VARIABLES LIKE 'binlog_format';

INSERT INTO customers (first_name, last_name, email) VALUES ('Kwon', 'Gio', 'kwon.gio@example.com');
UPDATE customers SET email='kwon.gio2@example.com' WHERE first_name='Kwon';
DELETE FROM customers WHERE first_name='Kwon';