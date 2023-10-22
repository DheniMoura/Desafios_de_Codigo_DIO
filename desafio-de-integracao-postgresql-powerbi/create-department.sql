-- Crie uma tabela 'department' no PostgreSQL
CREATE TABLE department (
    Dname VARCHAR(15) NOT NULL,
    Dnumber INT NOT NULL,
    Mgr_ssn CHAR(9) NOT NULL,
    Mgr_start_date DATE,
    Dept_create_date DATE,
    CHECK (Dept_create_date < Mgr_start_date),
    PRIMARY KEY (Dnumber),
    UNIQUE (Dname),
    FOREIGN KEY (Mgr_ssn) REFERENCES employee(Ssn)
);

-- Adicione uma restrição de chave estrangeira à tabela 'department'
ALTER TABLE department
ADD CONSTRAINT fk_dept
FOREIGN KEY (Mgr_ssn) REFERENCES employee(Ssn)
ON UPDATE CASCADE;

	-- Use '\d' para obter informações sobre a tabela no PostgreSQL
	SELECT column_name, data_type
	FROM information_schema.columns
	WHERE table_name = 'department';