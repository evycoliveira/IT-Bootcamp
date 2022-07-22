# Prática Integradora II: DER e SQL
> Este repositório conterá as listas de exercícios passados em aula para resolução durante o Bootcamp de Java com a Digital House em parceria com o Mercado Livre.
### Prática integradora em grupo

Cenário:
<p>Uma empresa provedora de Internet precisa de um banco de dados para armazenar cada um de seus clientes junto com o plano/pacote que ele contratou.
Através de uma análise prévia, sabe-se que as seguintes informações devem ser armazenadas:
- Deve ser registrado dos cliente: ID, nome, sobrenome, data de nascimento, estado, cidade.
- Quanto aos planos de internet: identificação do plano, velocidade oferecida em megabytes, preço, desconto.</p>

#### Exercício 1:
<p>Após enunciados os requisitos da empresa, solicita-se modelá-los por meio de um DER (Diagrama Entidade-Relacionamento).</p>

#### Exercício 2:
<p>Uma vez que o banco de dados foi modelado e levantado, responda às seguintes perguntas:
   <p>a. Qual é a chave primária para a tabela de clientes? Justifique a resposta.</p>
A chave primária da tabela Clientes é o id, pois é o único dado identificador que não se repete e pode ser usada como identificador do cliente.  
   <p>b. Qual é a chave primária da tabela de Planos de internet? Justifique a resposta.</p>
A chave primária da tabela de Planos é o id, pois é o único dado identificador que não se repete e pode ser usado como identificador do plano.  
   <p>c.Como seriam as relações entre as tabelas? Em qual tabela deve estar chave estrangeira? A qual campo de qual tabela essa chave estrangeira se refere? Justifique a resposta.</p>
A relação entre as tabelas Cliente e Plano é 1:N. A tabela que deve conter a chave estrangeira é na tabela Plano, referenciando o campo de id da tabela de Cliente, já que é importante que a tabela de Plano conheça a qual id do cliente o plano se refere. 

#### Exercício 3:
<p>Uma vez que o diagrama foi feito e essas perguntas foram respondidas, use MySQL Workbench
para executar o seguinte:</p>
<p>a. Crie um novo banco de dados chamado “empresa_internet”.</p>
<p>b. Insira 10 registros na tabela de clientes e 5 na tabela de planos de internet.</p>
<p>c. Faça as associações/relacionamentos correspondentes entre esses registros.</p>


#### Exercício 4:
<p>Pense em 10 consultas SQL que podem ser feitas no banco de dados. Expresse as sentenças.</p>