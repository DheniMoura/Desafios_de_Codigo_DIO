## RELATÓRIO DE CARACTERISAÇÃO DE BASE DE DADOS DO DESAFIO

Este projeto foi originado pela integração da base de dados do PostgreSQL com Power BI. O objetivo consiste em realizar uma pequena caracterização dos dados. Os valores são fictícios, originados de uma base de teste.
<br/>
A base ded ados foi criada utilizando os scripts deste repositório.
Trata-se de uma base de teste com a finalidade de fornecer dados de forma rápida e leve, com foco em proporcionar a vivência da integração de um banco de dados com o Power BI.<br/>
<br/>
No Power BI os dados foram tratados para proporcionar uma melhor análise, extraindo insights do negócio.
Entre outras atividades realizadas, estão as que se seguem:
-	Verificou-se os cabeçalhos e tipos de dados
-	Valores monetários modificados para o tipo double preciso
-	foi verificada a existência de nulo e optou-se por não fazer a remoção da linha
-	Verificado o número de horas dos projetos
-	Mescladas as consultas employee e departament criando uma tabela employee com o nome dos departamentos associados aos colaboradores
-	Realizada a junção dos colaboradores e respectivos nomes dos gerentes . Isso foi feito pela mescla de tabelas com Power BI
-	Mescladas as colunas de Nome e Sobrenome para ter apenas uma coluna definindo os nomes dos colaboradores
-	Eliminadas as colunas desnecessárias, que não serão usadas no relatório, de cada tabela
<br/>
Dentre as possibilidades de tratamento de dados para análise, podemos mesclar, atribuir ou combinar os dados (colunas e tabelas)<br/>
Em resumo, a principal diferença entre essas ações está no que elas fazem com os dados:<br/>
<br/>
Mesclar combina dados de várias tabelas com base em colunas-chave.<br/>
Combinar empilha ou concatena linhas de tabelas semelhantes.<br/>
Atribuir colunas adiciona colunas calculadas ou derivadas às tabelas existentes.<br/>
Essas ações são essenciais para a preparação e transformação de dados no Power BI e ajudam a criar modelos de dados significativos para análise e visualização.<br/>
<br/>
No caso dessa análise mesclar as consultas de employee e department, por exemplo, permitiu criar uma nova tabela com a finalidade de facilitar a análise dos dados.
<br/>
<br/>
<br/>
No [arquivo](https://github.com/DheniMoura/Desafios_de_Codigo_DIO/blob/main/desafio-de-integracao-postgresql-powerbi/desafio-de-integracao.pbix) que pode ser visualizado e editado no Power BI, é possível interagir com o painel criado para esse desafio, para uma visualização mais rápida (porém mais limitada) segue imagens do resultado final apresentado.
<br/>
![Captura de tela 2023-10-22 150742](https://github.com/DheniMoura/Desafios_de_Codigo_DIO/assets/91914066/b802189f-6724-4c79-a306-c4a8fc1867c5)
  _Imagem inicial_
<br/>
![Captura de tela 2023-10-22 150842](https://github.com/DheniMoura/Desafios_de_Codigo_DIO/assets/91914066/a1211cb9-eb32-4f02-a27f-91fbf80aaaad)
![Captura de tela 2023-10-22 150915](https://github.com/DheniMoura/Desafios_de_Codigo_DIO/assets/91914066/50984bbf-4bf4-4973-8228-61584961ef6f)

