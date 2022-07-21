# Prática Integradora I: Modelagem Entidade-Relacionamento
> Este repositório conterá as listas de exercícios passados em aula para resolução durante o Bootcamp de Java com a Digital House em parceria com o Mercado Livre.
### Prática Individual

#### Exercício 1: 
<p>Uma loja de móveis precisa da implementação de um banco de dados para controlar as
  vendas que realiza por dia, o estoque de seus itens (produtos) e a lista dos seus clientes
  que fazem compras.</p>

Você precisa modelar:
- Quais seriam as entidades desse sistema?
<p>As entidades definidas pelo escopo do sistema, foram: produto, categoria, estoque, item, ordem e cliente.</p>

- Quais atributos serão determinados para cada entidade? (Considere aqueles que
  são considerados necessários).
<p>Produto(id, nome, sobrenome, categoria_id, preco, descricao);</p> 
<p>Categoria(id);</p>
<p>Estoque(data_entrada, data_saida, quantidade, produto_id);</p>
<p>Item(id, quantidade, ordem_id, produto_id, valor_unitario, subtotal);</p>
<p>Ordem(id, data_pedido, data_pagamento, cliente_id);</p>
<p>Cliente(id, nome, sobrenome, documento).</p>

- Como os relacionamentos entre as entidades serão moldados? Quais seriam as
  cardinalidades?
<p>Os relacionamentos das entidades são definidos pela cardinalidade e está intimamente ligado às regras de negócios. As cardinalidades das entidades são:
Entidade Categoria pertence à um ou mais Produtos (1:N), a entidade Estoque poderá conter vários Produtos (1:N), a entidade Produto poderá estar relacionado à vários Itens (1:N), 
vários Itens podem estar contidos dentro de uma Ordem (N:1) e uma entidade Cliente pode conter várias Ordens (1:N).</p>

- Crie um DER para modelar o cenário proposto.