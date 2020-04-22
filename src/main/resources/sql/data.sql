use oauth2provider;

   INSERT INTO oauth_client_details(
 client_id,                        resource_ids,               client_secret,
 scope,                            authorized_grant_types,     web_server_redirect_uri,
 authorities,                      access_token_validity,      refresh_token_validity,
 additional_information,           autoapprove)
 VALUES
 ('microservice_authorization_code', null, '123456',    'read_profile,read_posts', 'authorization_code',
  'http://localhost:8080/user/profile',    null, 3000, -1, null, 'false');


       INSERT INTO oauth_client_details(
 client_id,                        resource_ids,               client_secret,
 scope,                            authorized_grant_types,     web_server_redirect_uri,
 authorities,                      access_token_validity,      refresh_token_validity,
 additional_information,           autoapprove)
 VALUES
 ('microservice_app', null, 'secret',    'READ_ALL_GUESTS,WRITE_GUEST,UPDATE_GUEST', 'client_credentials',
  null,    null, 3000, -1, null, 'false');


       UPDATE oauth_client_details
  SET client_secret = '$2a$04$0B5fGTAd01TqGqDoQ8W1cO8Hirja6RaG5vyc9MKLU5ls8QyE6UO9y'
  WHERE client_id = 'microservice_app';


      UPDATE oauth_client_details
  SET client_secret = '$2a$04$TSCJpsvX4fcJ7yXBLeJrZeePQ2PHlEY/SkfBJsQ3MegUAFM7lW32i'
  WHERE client_id = 'microservice_authorization_code';


  INSERT INTO USER (USERNAME, PASSWORD) VALUES ('u1', 'u1');