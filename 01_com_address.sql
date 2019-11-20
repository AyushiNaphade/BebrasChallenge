CREATE TABLE com_address(
   AddressID  VARCHAR(30) NOT NULL PRIMARY KEY
  ,Line1      VARCHAR(30)
  ,Line2      VARCHAR(30)
  ,city       VARCHAR(30)
  ,districtID VARCHAR(30)
  ,stateID    VARCHAR(30)
  ,pincode    VARCHAR(30)
  ,latitude   VARCHAR(30)
  ,longitude  VARCHAR(30)
  ,countryID  VARCHAR(30)
);