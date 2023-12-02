# language: pt

Funcionalidade: Autenticação na EBAC-SHOP
Como cliente da EBAC-SHOP
Quero fazer o login na plataforma
Para visualizar meus pedidos

Contexto:
Dado que sou um cliente da EBAC-SHOP

Cenário: Login bem-sucedido direciona para meus pedidos
Quando insiro dados válidos de "usuario" e "senha"
E logo com êxito no site
E tenho acesso à minha área de cliente
Então devo poder acessar a sessão "meus pedidos"

Esquema do Cenario: Mensagem de alerta ao inserir campos inválidos
Quando insiro um <usuario> ou <senha> inválidos :
Então devo receber um toast de alerta "Usuário ou senha inválidos"

Exemplos:
| usuário | senha      |
| ""      | "senha123" |
| "user1" | ""         |