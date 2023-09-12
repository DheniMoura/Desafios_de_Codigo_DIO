-- Funções Agregadas --
-- Contando todos os usuários cadastrados
SELECT COUNT(*) FROM usuarios
as total_usuario;

-- Contando apenas os usuário que possuem reserva
SELECT COUNT(*) as total_usuario
FROM usuarios us
INNER JOIN reservas rs
ON us.id = rs.id_usuario;

-- encontrando o usuário mais velho
SELECT MAX(TIMESTAMPDIFF(YEAR, data_nascimento, CURRENT_DATE())) 
AS maior_idade FROM usuarios;

-- Agrupamentos de resultados --
-- Inserindo um usuário, para fins de exemplo
INSERT INTO reservas (id_usuario, id_destino) VALUES (1,3);

-- Quantidade de reservas para cada destino
SELECT COUNT(*), id_destino FROM reservas
GROUP BY id_destino;

-- Ordenando os resultados dos destinos com mais reservas para menos reservas--
SELECT COUNT(*) AS qtd_reservas, id_destino FROM reservas
GROUP BY id_destino
ORDER BY qtd_reservas DESC, id_destino;

