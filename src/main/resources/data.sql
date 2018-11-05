/* Users */
INSERT INTO users (USER_ID, EMAIL, CREATED_AT, BIRTHDAY, FIRST_NAME, LAST_NAME, PASSWORD) VALUES(1, 'admin@keyless.com', CURRENT_TIMESTAMP, '2016-01-01', 'Admin', 'Istrator', '$2a$04$YcO.uhaHAkYKdh7x6Z7.EeuELTSKyfM8Eue/1azhb5H7KDKV0xCwi')
INSERT INTO user_roles (USER_USER_ID, ROLES) VALUES (1, 'ADMIN')
INSERT INTO user_roles (USER_USER_ID, ROLES) VALUES (1, 'CUSTODIAN')
INSERT INTO user_roles (USER_USER_ID, ROLES) VALUES (1, 'TENANT')
INSERT INTO users (USER_ID, EMAIL, CREATED_AT, BIRTHDAY, FIRST_NAME, LAST_NAME, PASSWORD, CREATOR_ID) VALUES(2, 'dave@keyless.com', CURRENT_TIMESTAMP, '2016-01-01', 'Davide', 'De Sclavis', '$2a$04$Tp09NLIvANRR6hTpms10rutXeFaJMdMc5SJxU9PPrC1WyFY8IR0d6', 1)
INSERT INTO user_roles (USER_USER_ID, ROLES) VALUES (2, 'TENANT')
INSERT INTO users (USER_ID, EMAIL, CREATED_AT, BIRTHDAY, FIRST_NAME, LAST_NAME, PASSWORD, CREATOR_ID) VALUES(3, 'mani@keyless.com', CURRENT_TIMESTAMP, '2016-01-01', 'Manuel', 'Buchauer', '$2a$04$bpv9qwYNz/1jK62s3wRXP.rxUvAUAxZtCSwesS6YeJRIppQdCwVaq', 1)
INSERT INTO user_roles (USER_USER_ID, ROLES) VALUES (3, 'TENANT')
INSERT INTO users (USER_ID, EMAIL, CREATED_AT, BIRTHDAY, FIRST_NAME, LAST_NAME, PASSWORD, CREATOR_ID) VALUES(4, 'lukas@keyless.com', CURRENT_TIMESTAMP, '2016-01-01', 'Lukas', 'Doetlinger', '$2a$04$weOttMVsFEFKtznG8dnQYeGIJX5YGSZZoorJ8jtDM0IWhQ0hh5NVy', 1)
INSERT INTO user_roles (USER_USER_ID, ROLES) VALUES (4, 'TENANT')

INSERT INTO users (USER_ID, EMAIL, CREATED_AT, BIRTHDAY, FIRST_NAME, LAST_NAME, PASSWORD, CREATOR_ID) VALUES(5, 'dennis.schlaeger@keyless.com', CURRENT_TIMESTAMP, '2016-01-01', 'Dennis', 'Schlaeger', '$2a$04$hqBFT92EwZyyRje/vjmBCO/YM9jvHu52au2f.ES0hooyS8aszSyE6', 2)
INSERT INTO user_roles (USER_USER_ID, ROLES) VALUES (5, 'VISITOR')
INSERT INTO users (USER_ID, EMAIL, CREATED_AT, BIRTHDAY, FIRST_NAME, LAST_NAME, PASSWORD, CREATOR_ID) VALUES(6, 'roman.tisch@keyless.com', CURRENT_TIMESTAMP, '2016-01-01', 'Roman', 'Tisch', '$2a$04$v9.Ty87mtJlkXaLwpBCa2e.RLQEYvoRZaI3nLm6.eE2L/gjpWRj9a', 3)
INSERT INTO user_roles (USER_USER_ID, ROLES) VALUES (6, 'VISITOR')

/* Content-hashes all match the word content */
INSERT INTO lock_keys (KEY_ID, AID, UID, OWNER_USER_ID, KEYNAME, CONTENT, CUSTOM_PERMISSION) VALUES (1, '11', 'yolo', 1, 'Key1', '$2a$04$rGYPQL5kixYKoI.wns40COQYaZM/0A.lbyF4Uz9HbGG.zw69iM1.W', true)
INSERT INTO lock_keys (KEY_ID, AID, UID, OWNER_USER_ID, KEYNAME, CONTENT, CUSTOM_PERMISSION) VALUES (2, '12', 'yolo', 2, 'Key2', '$2a$04$rGYPQL5kixYKoI.wns40COQYaZM/0A.lbyF4Uz9HbGG.zw69iM1.W', false)
INSERT INTO lock_keys (KEY_ID, AID, UID, OWNER_USER_ID, KEYNAME, CONTENT, CUSTOM_PERMISSION) VALUES (3, '13', 'yolo', 3, 'Key3', '$2a$04$rGYPQL5kixYKoI.wns40COQYaZM/0A.lbyF4Uz9HbGG.zw69iM1.W', false)
INSERT INTO lock_keys (KEY_ID, AID, UID, OWNER_USER_ID, KEYNAME, CONTENT, CUSTOM_PERMISSION) VALUES (4, '14', 'yolo', 4, 'Key4', '$2a$04$rGYPQL5kixYKoI.wns40COQYaZM/0A.lbyF4Uz9HbGG.zw69iM1.W', false)
INSERT INTO lock_keys (KEY_ID, AID, UID, OWNER_USER_ID, KEYNAME, CONTENT, CUSTOM_PERMISSION) VALUES (5, '15', 'yolo', 1, 'Key5', '$2a$04$rGYPQL5kixYKoI.wns40COQYaZM/0A.lbyF4Uz9HbGG.zw69iM1.W', false)
INSERT INTO lock_keys (KEY_ID, AID, UID, OWNER_USER_ID, KEYNAME, CONTENT, CUSTOM_PERMISSION) VALUES (6, '16', 'yolo', 2, 'Key6', '$2a$04$rGYPQL5kixYKoI.wns40COQYaZM/0A.lbyF4Uz9HbGG.zw69iM1.W', false)
INSERT INTO lock_keys (KEY_ID, AID, UID, OWNER_USER_ID, KEYNAME, CONTENT, CUSTOM_PERMISSION) VALUES (7, '17', 'yolo', 3, 'Key7', '$2a$04$rGYPQL5kixYKoI.wns40COQYaZM/0A.lbyF4Uz9HbGG.zw69iM1.W', true)
INSERT INTO lock_keys (KEY_ID, AID, UID, OWNER_USER_ID, KEYNAME, CONTENT, CUSTOM_PERMISSION) VALUES (8, '18', 'yolo', 4, 'Key8', '$2a$04$rGYPQL5kixYKoI.wns40COQYaZM/0A.lbyF4Uz9HbGG.zw69iM1.W', true)

INSERT INTO key_permission (PERMISSION_ID, KEY_KEY_ID) VALUES (1, 1)
INSERT INTO key_permission (PERMISSION_ID, KEY_KEY_ID) VALUES (2, 2)
INSERT INTO key_permission (PERMISSION_ID, KEY_KEY_ID) VALUES (3, 3)
INSERT INTO key_permission (PERMISSION_ID, KEY_KEY_ID) VALUES (4, 4)
INSERT INTO key_permission (PERMISSION_ID, KEY_KEY_ID) VALUES (5, 5)
INSERT INTO key_permission (PERMISSION_ID, KEY_KEY_ID) VALUES (6, 6)
INSERT INTO key_permission (PERMISSION_ID, KEY_KEY_ID) VALUES (7, 7)
INSERT INTO key_permission (PERMISSION_ID, KEY_KEY_ID) VALUES (8, 8)

INSERT into system_log (SYSTEM_LOG_ID, LOG_TIME, ACTOR, TARGET, EVENT) VALUES (1, CURRENT_TIMESTAMP, 'User 1', 'Key 1', 'This is a test log-entry.')
INSERT into system_log (SYSTEM_LOG_ID, LOG_TIME, ACTOR, TARGET, EVENT) VALUES (2, CURRENT_TIMESTAMP, 'User 1', 'Key 1', 'This is the second test log-entry.')
INSERT into system_log (SYSTEM_LOG_ID, LOG_TIME, ACTOR, TARGET, EVENT) VALUES (3, CURRENT_TIMESTAMP, 'User 1', 'Key 1', 'This is the third test log-entry.')
INSERT into system_log (SYSTEM_LOG_ID, LOG_TIME, ACTOR, TARGET, EVENT) VALUES (4, CURRENT_TIMESTAMP, 'User 1', 'Key 1', 'This is the fourth test log-entry.')
INSERT into system_log (SYSTEM_LOG_ID, LOG_TIME, ACTOR, TARGET, EVENT) VALUES (5, CURRENT_TIMESTAMP, 'User 1', 'Key 1', 'This is the fifth test log-entry.')

/* Locks */
INSERT INTO locks (LOCK_ID, LOCK_NAME, ADDRESS, CODE) VALUES (1, 'Main', '192.168.0.25:5000', 'code')
INSERT INTO locks (LOCK_ID, LOCK_NAME, ADDRESS, CODE) VALUES (2, 'Flat1', '192.168.0.102', 'code')
INSERT INTO locks (LOCK_ID, LOCK_NAME, ADDRESS, CODE) VALUES (3, 'Flat2', '192.168.0.103', 'code')
INSERT INTO locks (LOCK_ID, LOCK_NAME, ADDRESS, CODE) VALUES (4, 'Flat3', '192.168.0.104', 'code')

INSERT INTO locks_unlockusers (LOCK_LOCK_ID, RELEVANT_USERS_USER_ID) VALUES (1, 1)
INSERT INTO locks_unlockusers (LOCK_LOCK_ID, RELEVANT_USERS_USER_ID) VALUES (1, 2)
INSERT INTO locks_unlockusers (LOCK_LOCK_ID, RELEVANT_USERS_USER_ID) VALUES (1, 3)
INSERT INTO locks_unlockusers (LOCK_LOCK_ID, RELEVANT_USERS_USER_ID) VALUES (1, 4)
INSERT INTO locks_unlockkeys (LOCK_LOCK_ID, RELEVANT_KEYS_KEY_ID) VALUES (1, 1)
INSERT INTO locks_unlockkeys (LOCK_LOCK_ID, RELEVANT_KEYS_KEY_ID) VALUES (1, 2)
INSERT INTO locks_unlockkeys (LOCK_LOCK_ID, RELEVANT_KEYS_KEY_ID) VALUES (1, 3)
INSERT INTO locks_unlockkeys (LOCK_LOCK_ID, RELEVANT_KEYS_KEY_ID) VALUES (1, 4)
INSERT INTO locks_unlockkeys (LOCK_LOCK_ID, RELEVANT_KEYS_KEY_ID) VALUES (1, 5)
INSERT INTO locks_unlockkeys (LOCK_LOCK_ID, RELEVANT_KEYS_KEY_ID) VALUES (1, 6)
INSERT INTO locks_unlockkeys (LOCK_LOCK_ID, RELEVANT_KEYS_KEY_ID) VALUES (1, 7)
INSERT INTO locks_unlockkeys (LOCK_LOCK_ID, RELEVANT_KEYS_KEY_ID) VALUES (1, 8)

INSERT INTO locks_unlockusers (LOCK_LOCK_ID, RELEVANT_USERS_USER_ID) VALUES (2, 2)
INSERT INTO locks_unlockkeys (LOCK_LOCK_ID, RELEVANT_KEYS_KEY_ID) VALUES (2, 2)
INSERT INTO locks_unlockkeys (LOCK_LOCK_ID, RELEVANT_KEYS_KEY_ID) VALUES (2, 6)

INSERT INTO locks_unlockusers (LOCK_LOCK_ID, RELEVANT_USERS_USER_ID) VALUES (3, 3)
INSERT INTO locks_unlockkeys (LOCK_LOCK_ID, RELEVANT_KEYS_KEY_ID) VALUES (3, 3)
INSERT INTO locks_unlockkeys (LOCK_LOCK_ID, RELEVANT_KEYS_KEY_ID) VALUES (3, 7)

INSERT INTO locks_unlockusers (LOCK_LOCK_ID, RELEVANT_USERS_USER_ID) VALUES (4, 4)
INSERT INTO locks_unlockkeys (LOCK_LOCK_ID, RELEVANT_KEYS_KEY_ID) VALUES (4, 4)
INSERT INTO locks_unlockkeys (LOCK_LOCK_ID, RELEVANT_KEYS_KEY_ID) VALUES (4, 8)
