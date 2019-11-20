CREATE TABLE `com_address` (
  `AddressID` int(11) NOT NULL,
  `Line1` text NOT NULL,
  `Line2` text NOT NULL,
  `city` varchar(20) NOT NULL,
  `districtID` int(11) NOT NULL,
  `stateID` int(11) NOT NULL,
  `pincode` int(11) NOT NULL,
  `latitude` decimal(10,6) NOT NULL,
  `longitude` decimal(10,6) NOT NULL,
  `countryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `com_address`
  ADD PRIMARY KEY (`AddressID`);

  