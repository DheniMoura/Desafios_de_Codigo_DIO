-- Consultas com junções
-- Trás os usuários com reservas (e destinos)
SELECT * FROM usuarios us
INNER JOIN reservas rs ON us.id = rs.id_usuario
INNER JOIN destinos ds ON rs.id_destino = rs.id;

-- Retorna os dados da tabela "da esquerda" que possuem  reserva
SELECT * FROM usuarios us
LEFT JOIN reservas rs ON us.id = rs.id_usuario;


-- insreindo uma "reserva" sem "destino" relacionado, para fins de teste
INSERT INTO destinos (nome, descricao) VALUES ("Destino sem reserva", "Descrição");

-- Retorna todas as linhas da tabela "da direita" e as linhas correspondentes da tabela "da esquerda"
SELECT * FROM reservas rs
RIGHT JOIN destinos ds ON rs.id_destino = ds.id;
-- retorna as informações de destino


-- Subconsultas --
-- trazendo os destinos que não tem reserva
SELECT * FROM destinos
WHERE id NOT IN (SELECT id_destino FROM reservas);

-- trazendo os usuários que não realizaram reservas
SELECT * FROM usuarios
WHERE id NOT IN (SELECT id_usuario FROM reservas);

-- trazer a quantidade de reservas que o usuário possui
SELECT nome, (SELECT COUNT(*) FROM reservas WHERE id_usuario = usuarios.id) 
AS total_reservas FROM usuarios;