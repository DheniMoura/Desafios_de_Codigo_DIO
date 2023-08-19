# Explorando IA Generativa em Pipeline de ETL com python
**Contexto:** Você é um cientista de dados no Santander e recebeu a tarefa de envolver seus clientes de maneira mais personalizada. Seu objetivo é usar o poder da IA Generativa para criar mensagens de marketing personalizadas que serão entregues a cada cliente.

**Condições do Problema:**

1. Você recebeu uma planilha simples, em formato CSV ('SDW2023.csv'), com uma lista de IDs de usuário do banco:
  ```
  UserID
  1
  2
  3
  4
  5
  ```
2. Seu trabalho é consumir o endpoint `GET https://sdw-2023-prd.up.railway.app/users/{id}` (API da Santander Dev Week 2023) para obter os dados de cada cliente.
3. Depois de obter os dados dos clientes, você vai usar a API do ChatGPT (OpenAI) para gerar uma mensagem de marketing personalizada para cada cliente. Essa mensagem deve enfatizar a importância dos investimentos.
4. Uma vez que a mensagem para cada cliente esteja pronta, você vai enviar essas informações de volta para a API, atualizando a lista de "news" de cada usuário usando o endpoint `PUT https://sdw-2023-prd.up.railway.app/users/{id}`.

# Limpeza de dados em Pipeline de ETL com python
**Contexto** O conjunto de dados contém informações sobre as 100 principais celebridades do site IMDb. Os dados foram coletados por meio de web scraping na página 'https://m.imdb.com/chart/starmeter/'. Precisamos que os dados fiquem prontos para serem analisados em breve.

**Condições do Problema**

Temos um arquivo, em formato CSV ('celeb_data.csv') que contém informações sobre as 100 principais celebridades do site IMDb.
O conjunto de dados consiste nas seguintes colunas:

Rank: a posição de classificação da celebridade com base em sua popularidade e classificação no medidor de estrelas.
Name: O nome da celebridade.
Date_of_birth: A data de nascimento da celebridade.
height: A altura da celebridade.
Roles: Os papéis desempenhados pela celebridade, incluindo ator, diretor, produtor e outros papéis relacionados.
Awards: o número de prêmios que a celebridade recebeu, incluindo vitórias e indicações.
Famous_for: O filme ou programa pelo qual a celebridade é amplamente reconhecida e conhecida.
Birth_place: O local de nascimento da celebridade.

Este conjunto de dados fornece informações valiosas sobre as 100 principais celebridades, incluindo suas classificações, detalhes pessoais como data de nascimento e altura, seus papéis na indústria do entretenimento, seu reconhecimento por meio de prêmios, os projetos pelos quais são famosos e seus locais de nascimento. Ele pode ser usado para várias análises e percepções sobre a popularidade e as conquistas dessas celebridades.