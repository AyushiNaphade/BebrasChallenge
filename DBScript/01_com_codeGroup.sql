-- Table structure for table `com_codeGroup`


CREATE TABLE com_codeGroup(
com_codeGroupId int(11) primary key,
com_codeGroupName varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



--
-- Inserting data for table `com_codeGroup`
--


INSERT INTO com_codeGroup (com_codeGroupId, com_codeGroupName) VALUES
(100,'gender'),
(101,'school'),
(102,'image'),
(103,'question'),
(104,'domain_of_question'),
(105,'language'),
(106,'question_level');

--
