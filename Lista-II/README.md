# Lista de Exercícios II

> Lista solicitada durante o dia 22 de junho, sob a temática do Git e Github.

## Resolução

// 1. Abra o terminal e execute as seguintes atividades:

// 1.1 Escolha uma pasta para criar nosso repositório local e vá até ela.
cd Documents/Projetos/IT-Bootcamp/Lista-II

// 1.2 Uma vez dentro da pasta, inicie um repositório git local.
git init

// 1.3 Uma vez criado o repositório, defina nossas credenciais (usuário e email).
git config user.name "nome de usuário"
git config user.email "e-mail do usuário"

// 1.4 Crie um arquivo chamado “teste1.txt” e coloque algum texto “aleatório” dentro dele.
touch teste1.txt
open teste.txt

// 1.5 Adicione o arquivo criado ao stage.
git add .

// 2. Crie um repositório no GitHub, obtenha sua URL e faça o seguinte:

// 2.1 Configure no repositório local o endereço do repositório remoto para poder compartilhar os arquivos posteriormente.
git clone https://github.com/evycoliveira/IT-Bootcamp.git

// 2.2 Verifique o status do repositório local para ver o status do arquivo “teste1.txt”.
git status

// 2.3 Se tudo estiver ok, envie o arquivo “teste1.txt” para o repositório remoto.
git commit -m "comentário"
git push origin main
git push origin develop

// 2.4 Acesse o GitHub e veja se o arquivo chegou com sucesso ao repositório remoto.
