# Bases de Dados NoSQL: Elasticsearch - Kibana
> Este repositório conterá as listas de exercícios passados em aula para resolução durante o Bootcamp de Java com a Digital House em parceria com o Mercado Livre.
## Banco de dados - Clientes : Consulta

### Exercício I
Para essa atividade será preciso utilizar/mostrar o arquivo Clientes-Misiones.csv e seus
dados armazenados. Para fazer isso, crie uma visualização que permita exibir as informações carregadas.

### Exercício II
Propõe-se testar a inserção de diferentes documentos (registros) no banco de dados criado
e sua posterior recuperação. Da mesma forma que você pode consultar dados no formato JSON, você pode inserir
documentos no Elasticsearch.

#### Solução exercício II:
- Verifica o conjunto de cluster</p>
GET _cluster/health

- Verifica o status dos nós</p>
GET _nodes/stats

- Lista os índices</p>
GET _cat/indices?v=true

- Consulta com todos os registros</p>
GET /clientes/_search

- Consulta com os clientes que pertencem ao país Argentina</p>
GET clientes/_search
{
"query": {
"match": {
"pais": "AR"
}
}
}

- Envia dados de um cliente novo</p>
POST clientes/_doc
{
"query": {
"apellido": "Cristini Oliveira",
"localidad": "Suzano",
"nome": "Evelyn",
"pais": "BR"
}
}

- Envia dados de um cliente novo</p>
POST clientes/_doc
{
"matchAll": {
"numero" : "3",
"apellido": "garcia",
"localidad": "Posadas",
"nome": "victor",
"pais": "AR"
}
}

- Cria um index para clientes</p>
PUT clientes

- Cria um novo recurso ou subsititui dados de clientes</p>
PUT clientes/_doc/5
{
"apellido": "Throssell",
"localidad": "Rio de Janeiro",
"nome": "Stephen",
"pais": "BR"
}
