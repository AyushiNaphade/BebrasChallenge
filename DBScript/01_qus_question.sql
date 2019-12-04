CREATE TABLE 01_qus_question(
question_ID INT,
country_id INT NOT NULL,
domain_codeId INT,
type_codeId INT,
qus_cap_background_explanation JSON,
PRIMARY KEY(question_id),
FOREIGN KEY (country_id) REFERENCES com_countries(id),
FOREIGN KEY(domain_codeId) REFERENCES com_code(com_codeId),
FOREIGN KEY(type_codeId) REFERENCES com_code(com_codeId)
)ENGINE=INNODB DEFAULT CHARSET=latin1;

INSERT INTO 01_qus_question
(question_ID,country_id,domain_codeId,type_codeId) VALUES (1,99,104,102);
