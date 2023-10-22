-- Crie uma tabela 'dept_locations' no PostgreSQL
CREATE TABLE dept_locations (
    Dnumber INT NOT NULL,
    Dlocation VARCHAR(15) NOT NULL,
    PRIMARY KEY (Dnumber, Dlocation),
    FOREIGN KEY (Dnumber) REFERENCES department(Dnumber)
);

-- Remova a restrição de chave estrangeira 'fk_dept_locations'
-- ALTER TABLE dept_locations DROP CONSTRAINT fk_dept_locations;

-- Adicione uma nova restrição de chave estrangeira à tabela 'dept_locations'
ALTER TABLE dept_locations
ADD CONSTRAINT fk_dept_locations
FOREIGN KEY (Dnumber) REFERENCES department(Dnumber)
ON DELETE CASCADE
ON UPDATE CASCADE;

	-- Use '\d' para obter informações sobre a tabela no PostgreSQL
	SELECT column_name, data_type
	FROM information_schema.columns
	WHERE table_name = 'dept_locations';