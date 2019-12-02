-- Table structure for table `com_code`


CREATE TABLE com_code(
com_codeGroupId int(11) ,
com_codeId int(11),
com_codeName varchar(100) NOT NULL,
foreign key(com_codeGroupId) REFERENCES com_codeGroup(com_codeGroupId) ON UPDATE CASCADE ON DELETE CASCADE,
primary key(com_codeGroupId,com_codeId)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Inserting data for table `com_code`
--

INSERT INTO com_code (com_codeGroupId,com_codeId, com_codeName) VALUES
(100, 001,'female'),
(100, 002,'male'),
(101, 001,'government'),
(101, 002,'private'),
(102, 001,'question'),
(102, 002,'option'),
(102, 003,'user'),
(103, 001,'Multi_Select'),
(103, 002,'Single_Select'),
(105, 001,'English');


--
