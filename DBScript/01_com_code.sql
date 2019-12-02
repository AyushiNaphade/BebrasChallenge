-- Table structure for table `com_code`


CREATE TABLE com_code(
com_codeId int(11),
com_codeGroupId int(11) ,
com_codeName varchar(100) NOT NULL,
foreign key(com_codeGroupId) REFERENCES com_codeGroup(com_codeGroupId) ON UPDATE CASCADE ON DELETE CASCADE,
primary key(com_codeId)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Inserting data for table `com_code`
--

INSERT INTO com_code (com_codeGroupId,com_codeId, com_codeName) VALUES
(100001, 100,'female'),
(100002, 100,'male');



--
