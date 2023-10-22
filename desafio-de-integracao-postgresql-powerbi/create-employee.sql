	-- Crie uma tabela 'employee' no PostgreSQL
	CREATE TABLE IF NOT EXISTS employee (
		Fname VARCHAR(15) NOT NULL,
		Minit CHAR,
		Lname VARCHAR(15) NOT NULL,
		Ssn CHAR(9) NOT NULL,
		Bdate DATE,
		Address VARCHAR(30),
		Sex CHAR,
		Salary NUMERIC(10, 2),
		Super_ssn CHAR(9),
		Dno INT NOT NULL,
		CHECK (Salary > 2000.0),
		PRIMARY KEY (Ssn)
	);

	-- Adicione uma restrição de chave estrangeira
	ALTER TABLE employee
	ADD CONSTRAINT fk_employee
	FOREIGN KEY (Super_ssn) REFERENCES employee(Ssn)
	ON DELETE SET NULL
	ON UPDATE CASCADE;

	-- Modifique a coluna 'Dno' na tabela 'employee'
	ALTER TABLE employee ALTER COLUMN Dno SET NOT NULL;
	ALTER TABLE employee ALTER COLUMN Dno SET DEFAULT 1;

	-- Use '\d' para obter informações sobre a tabela no PostgreSQL
	SELECT column_name, data_type
	FROM information_schema.columns
	WHERE table_name = 'employee';