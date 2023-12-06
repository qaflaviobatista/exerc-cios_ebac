# language: pt

Funcionalidade: Autenticação na EBAC-SHOP
Como cliente da EBAC-SHOP
Quero fazer o login na plataforma
Para visualizar meus pedidos

Contexto:
Dado que sou um cliente da EBAC-SHOP

Esquema do Cenario: Login bem-sucedido direciona para meus pedidos
Quando insiro dados válidos de <usuario> e <senha>
Então devo poder acessar a sessão "meus pedidos"

Exemplos:
| usuário                    | senha      |
| "usuario@ebac.com.br"      | "senha123" |

Esquema do Cenario: Mensagem de alerta ao tentar logar com campos vazios
Quando não insiro um <usuario> e/ou <senha> válidos
Então devo receber um toast de <alerta>

Exemplos:
| usuário | senha      | alerta                                 |
| ""      | "senha123" | "insira um usuário válido"             |
| "user1" | ""         | "insira uma senha válida"              |
| ""      | ""         | "insira um usuáio e uma senha válidos" |

Esquema do Cenario: Mensagem de alerta ao tentar logar com campos inválidos
Quando insiro um <usuario> e/ou <senha> inválidos
Então devo receber um toast de <alerta>

Exemplos:
| usuário | senha      | alerta                         |
| ""      | "senha123" | "usuário e/ou senha inválidos" |
| "user1" | ""         | "usuário e/ou senha inválidos" |
| ""      | ""         | "usuário e/ou senha inválidos" |
