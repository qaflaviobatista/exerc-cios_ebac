# language: pt

/não sei se exagerei nos esquemas de cenário mas foi bom pra treinar a lógica deles no Gherkin/

Funcionalidade: Tela de cadastro - Checkout

  Como cliente da EBAC-SHOP
  Eu quero concluir meu cadastro
  Para finalizar minha compra

Contexto: 
Dado que estou na tela de cadastro de checkout

Esquema do Cenário: Campos obrigatórios preenchidos
Quando preencho ao menos o campo <nome>
E preencho o campo <sobrenome>
E preencho o campo <pais>
E preencho o campo <endereco>
E preencho o campo <cidade>
E preencho o campo <cep>
E preencho o campo <telefone>
E preencho o campo <e-mail>
E clico no botão de cadastrar
Então o sistema deve me cadastrar com sucesso
E devo conseguir ir ao checkout de compra

Exemplos:
| nome     | sobrenome | pais     | endereco           | cidade           | cep        | telefone      | e-mail          |
| "flavio" | "Batista" | "Brasil" | "Rua Bernardo1493" | "Rio de Janeiro" | "21710261" | "21970269600" | "fsb@gmail.com" |

Esquema do Cenário: Cadastro com campo obrigatório não preenchido
Quando não preencho <nome>
E não preencho <sobrenome> 
E não preencho <pais>
E não preencho <endereco>
E não preencho <cidade>
E não preencho <cep>
E não preencho <telefone>
E não preencho <e-mail>
E clico no botão de cadastrar
Então o sistema deve me enviar uma <mensagem>
E não consigo finalizar a compra

Exemplos:
| nome     | sobrenome          | pais     | endereco                           | cidade           | cep        | telefone      | e-mail        | mensagem                              |
| ""       | "da Silva Batista" | "Brasil" | "Rua Bernardo 1493" | "Rio de Janeiro" | "21710261" | "21970269600" | "fdb@gmail.com" | "há campo obrigatório não preenchido" |
| "Flávio" | ""                 | "Brasil" | "Rua Bernardo 1493" | "Rio de Janeiro" | "21710261" | "21970269600" | "fdb@gmail.com" | "há campo obrigatório não preenchido" |
| "Flávio" | "da Silva Batista" | ""       | "Rua Bernardo 1493" | "Rio de Janeiro" | "21710261" | "21970269600" | "fdb@gmail.com" | "há campo obrigatório não preenchido" |
| "Flávio" | "da Silva Batista" | "Brasil" | ""                  | "Rio de Janeiro" | "21710261" | "21970269600" | "fdb@gmail.com" | "há campo obrigatório não preenchido" |
| "Flávio" | "da Silva Batista" | "Brasil" | "Rua Bernardo 1493" | ""               | "21710261" | "21970269600" | "fdb@gmail.com" | "há campo obrigatório não preenchido" |
| "Flávio" | "da Silva Batista" | "Brasil" | "Rua Bernardo 1493" | "Rio de Janeiro" | ""         | "21970269600" | "fdb@gmail.com" | "há campo obrigatório não preenchido" |
| "Flávio" | "da Silva Batista" | "Brasil" | "Rua Bernardo 1493" | "Rio de Janeiro" | "21710261" | ""            | "fdb@gmail.com" | "há campo obrigatório não preenchido" |
| "Flávio" | "da Silva Batista" | "Brasil" | "Rua Bernardo 1493" | "Rio de Janeiro" | "21710261" | ""            | ""              | "há campo obrigatório não preenchido" |

Cenário: Campos não obrigatórios não preenchidos
Quando não preencher algum campo não obrigatório 
E clicar em finalizar compra
Então o sistema deve mandar um toas de alerta com a mensagem "há campos não preenchidos mas você pode preencher depois"
E deve proceder o usuário ao checkout para finalizar compra

Cenário: Tentativa de cadastro com e-mail inválido
Quando preencho o campo de <e-mail> com um formato inválido
E clico no botão de cadastrar
Então o sistema deve exibir a seguinte <mensagem>

Exemplos:
| e-mail                      | mensagem                     |
| "fulan*%#"@provfalso.com.ud | "formato de e-mail invalido" |



