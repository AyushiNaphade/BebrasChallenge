CREATE TABLE 01_qus_optionTranslation
(
optionTranslation_ID NOT NULL,
option_ID,
language_codeId,
translation JSON,
PRIMARY KEY(questionTranslation_ID),
FOREIGN KEY(option_ID) REFERENCES 01_qus_option(option_ID),
FOREIGN KEY(language_codeId) REFERENCES com_code(com_codeId),
)ENGINE=INNODB DEFAULT CHARSET=latin1;