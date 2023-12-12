# language: pt

Funcionalidade: Tela de Cadastro - Checkout

  Como cliente da EBAC-SHOP
  Eu quero concluir meu cadastro
  Para finalizar minha compra

Contexto: 
Dado que estou na tela de cadastro de checkout

Cenário: Campos obrigatórios preenchidos com sucesso
Quando preencho todos os campos obrigatórios e clico em cadastrar
Então o sistema deve me cadastrar com sucesso e devo conseguir ir ao checkout de compra

Cenário: Cadastro com campo obrigatório não preenchido
Quando não preencho algum campo obrigatório e clico em cadastrar
Então o sistema deve enviar a mensagem "campo obrigatório não preenchido" e impedir a compra

Cenário: Campos não obrigatórios não preenchidos
Quando não preencho algum campo não obrigatório e clico em finalizar compra
Então o sistema deve exibir o alerta: "há campos não preenchidos" e permitir ir ao checkout

Cenário: Tentativa de cadastro com e-mail inválido
Quando preencho o campo de e-mail com um formato inválido e clico em cadastrar
Então o sistema deve exibir a mensagem: "formato de e-mail inválido"



