# language: pt

Funcionalidade: Autenticação na EBAC-SHOP
Como cliente da EBAC-SHOP
Quero fazer o login na plataforma
Para visualizar meus pedidos

Contexto:
Dado que sou um cliente da EBAC-SHOP

Esquema do Cenario: Login bem-sucedido direciona para meus pedidos
Quando insiro dados válidos de <usuario> e <senha>
E logo com êxito no site
E tenho acesso à minha área de cliente
Então devo poder acessar a sessão "meus pedidos"

Exemplos:
| usuario               | senha      |
| "usuario@ebac.com.br" | "senha123" |

Esquema do Cenario: Mensagem de alerta ao tentar logar com campos vazios
Quando não insiro um <usuario> e/ou <senha> válidos
Então não consigo logar no site
Mas devo receber um toast de <alerta>

Exemplos:
| usuario | senha      | alerta                                 |
| ""      | "senha123" | "insira um usuário válido"             |
| "user1" | ""         | "insira uma senha válida"              |
| ""      | ""         | "insira um usuáio e uma senha válidos" |

Esquema do Cenario: Mensagem de alerta ao tentar logar com campos inválidos
Quando insiro um <usuario> e/ou <senha> inválidos
Então não consigo logar no site
Mas devo receber um toast de <alerta>

Exemplos:
| usuario            | senha            | alerta                         |
| "false-user"       | "senha123"       | "usuário e/ou senha inválidos" |
| "usuario@ebac.com" | "false-password" | "usuário e/ou senha inválidos" |
| "false-user"       | "false-password" | "usuário e/ou senha inválidos" |
