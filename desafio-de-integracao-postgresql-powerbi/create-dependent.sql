create table dependent(
	Essn char(9) not null,
    Dependent_name varchar(15) not null,
    Sex char,
    Bdate date,
    Relationship varchar(8),
    primary key (Essn, Dependent_name),
    constraint fk_dependent foreign key (Essn) references employee(Ssn)
);

	-- Use '\d' para obter informações sobre a tabela no PostgreSQL
	SELECT column_name, data_type
	FROM information_schema.columns
	WHERE table_name = 'dependent';