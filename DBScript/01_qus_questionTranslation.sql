CREATE TABLE 01_qus_questionTranslation
(
questionTranslation_ID NOT NULL,
question_ID,
language_codeId,
translation JSON,
PRIMARY KEY(questionTranslation_ID),
FOREIGN KEY(question_ID) REFERENCES 01_qus_question(question_ID),
FOREIGN KEY(language_codeId) REFERENCES com_code(com_codeId),
)ENGINE=INNODB DEFAULT CHARSET=latin1;