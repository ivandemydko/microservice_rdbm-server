CREATE DATABASE oauth2provider;

use oauth2provider;

-- CREATE USER 'oauth2provider'@'localhost' IDENTIFIED BY '123';
--  GRANT ALL PRIVILEGES ON oauth2provider.* TO 'oauth2provider'@'localhost';

 create table oauth_client_details (
 client_id VARCHAR(256) PRIMARY KEY,
 resource_ids VARCHAR(256),
 client_secret VARCHAR(256),
 scope VARCHAR(256),
 authorized_grant_types VARCHAR(256),
 web_server_redirect_uri VARCHAR(256),
 authorities VARCHAR(256),
 access_token_validity INTEGER,
 refresh_token_validity INTEGER,
 additional_information VARCHAR(4096),
 autoapprove VARCHAR(256) );


 create table oauth_access_token (
 token_id VARCHAR(256),
 token LONG VARBINARY,
 authentication_id VARCHAR(256) PRIMARY KEY,
 user_name VARCHAR(256),
 client_id VARCHAR(256),
 authentication LONG VARBINARY,
 refresh_token VARCHAR(256) );

 create table oauth_approvals (
 userId VARCHAR(256),
 clientId VARCHAR(256),
 scope VARCHAR(256),
 status VARCHAR(10),
 expiresAt TIMESTAMP,
 lastModifiedAt TIMESTAMP );

 create table oauth_refresh_token (
 token_id VARCHAR(256),
 token LONG VARBINARY,
 authentication LONG VARBINARY );



 CREATE TABLE USER (
  USER_ID BIGINT AUTO_INCREMENT PRIMARY KEY,
  USERNAME VARCHAR(128) NOT NULL UNIQUE,
  PASSWORD VARCHAR(256) NOT NULL
);