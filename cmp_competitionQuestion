-- table structure for cmp_competitionQuestion


CREATE TABLE cmp_competitionQuestion(
cmp_competitionQuestionID int(11) primary key,
foreign key(cmp_competitionAgeID) references cmp_competitionAge(cmp_competitionAgeID) ON UPDATE CASCADE ON DELETE CASCADE,  
foreign key(questionID) references qes_question(questionID) ON UPDATE CASCADE ON DELETE CASCADE,  
questionLevelCodeID int(11),
displayOrder  varchar(400) ,
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
