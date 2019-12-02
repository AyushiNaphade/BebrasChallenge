-- table structure for cmp_competition


CREATE TABLE cmp_competition(
cmp_competitionId int(11) primary key,
cmp_competitionName  varchar(200) NOT NULL,
cmp_Information  varchar(400) ,
start_date DATE,
end_date DATE,
duration_in_min int(11)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
