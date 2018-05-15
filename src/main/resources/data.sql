INSERT INTO users (USER_ID, EMAIL, CREATED_AT, BIRTHDAY, FIRST_NAME, PASSWORD) VALUES(1, 'admin@keyless.com', CURRENT_TIMESTAMP, '2016-01-01', 'admin', '$2a$04$YcO.uhaHAkYKdh7x6Z7.EeuELTSKyfM8Eue/1azhb5H7KDKV0xCwi')
INSERT INTO users (USER_ID, EMAIL, CREATED_AT, BIRTHDAY, FIRST_NAME, PASSWORD) VALUES(2, 'dave@keyless.com', CURRENT_TIMESTAMP, '2016-01-01', 'dave', '$2a$04$Tp09NLIvANRR6hTpms10rutXeFaJMdMc5SJxU9PPrC1WyFY8IR0d6')
INSERT INTO users (USER_ID, EMAIL, CREATED_AT, BIRTHDAY, FIRST_NAME, PASSWORD) VALUES(3, 'mani@keyless.com', CURRENT_TIMESTAMP, '2016-01-01', 'mani', '$2a$04$bpv9qwYNz/1jK62s3wRXP.rxUvAUAxZtCSwesS6YeJRIppQdCwVaq')
INSERT INTO users (USER_ID, EMAIL, CREATED_AT, BIRTHDAY, FIRST_NAME, PASSWORD) VALUES(4, 'lukas@keyless.com', CURRENT_TIMESTAMP, '2016-01-01', 'lukas', '$2a$04$weOttMVsFEFKtznG8dnQYeGIJX5YGSZZoorJ8jtDM0IWhQ0hh5NVy')

INSERT INTO lock_keys (KEY_ID, AID, OWNER_USER_ID, KEYNAME, CONTENT) VALUES (1, '11', 1, 'Key1', 'AAAAAAAAAAAAAAAAAAAAAA==')
INSERT INTO lock_keys (KEY_ID, AID, OWNER_USER_ID, KEYNAME, CONTENT) VALUES (2, '12', 2, 'Key2', 'AAAAAAAAAAAAAAAAAAAAAA==')
INSERT INTO lock_keys (KEY_ID, AID, OWNER_USER_ID, KEYNAME, CONTENT) VALUES (3, '13', 3, 'Key3', 'AAAAAAAAAAAAAAAAAAAAAA==')
INSERT INTO lock_keys (KEY_ID, AID, OWNER_USER_ID, KEYNAME, CONTENT) VALUES (4, '14', 4, 'Key4', 'AAAAAAAAAAAAAAAAAAAAAA==')
INSERT INTO lock_keys (KEY_ID, AID, OWNER_USER_ID, KEYNAME, CONTENT) VALUES (5, '15', 1, 'Key5', 'AAAAAAAAAAAAAAAAAAAAAA==')
INSERT INTO lock_keys (KEY_ID, AID, OWNER_USER_ID, KEYNAME, CONTENT) VALUES (6, '16', 2, 'Key6', 'AAAAAAAAAAAAAAAAAAAAAA==')
INSERT INTO lock_keys (KEY_ID, AID, OWNER_USER_ID, KEYNAME, CONTENT) VALUES (7, '17', 3, 'Key7', 'AAAAAAAAAAAAAAAAAAAAAA==')
INSERT INTO lock_keys (KEY_ID, AID, OWNER_USER_ID, KEYNAME, CONTENT) VALUES (8, '18', 4, 'Key8', 'AAAAAAAAAAAAAAAAAAAAAA==')

INSERT into system_log (SYSTEM_LOG_ID, EVENT) VALUES (1, 'Now: This is a test log-entry.')
INSERT into system_log (SYSTEM_LOG_ID, EVENT) VALUES (2, 'Now: This is the second test log-entry.')
INSERT into system_log (SYSTEM_LOG_ID, EVENT) VALUES (3, 'Now: This is the third test log-entry.')
INSERT into system_log (SYSTEM_LOG_ID, EVENT) VALUES (4, 'Now: This is the fourth test log-entry.')
INSERT into system_log (SYSTEM_LOG_ID, EVENT) VALUES (5, 'Now: This is the fifth test log-entry.')