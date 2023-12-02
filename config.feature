#language: pt

Funcionalidade: Product Configuration

  Como cliente da EBAC-SHOP,
  Eu quero configurar meu produto de acordo com meu tamanho e gosto
  E escolher a quantidade
  Para depois inserir no carrinho

  Contexto:
    Dado que sou um cliente na EBAC-SHOP

  Cenario: Configuração bem-sucedida do produto
    Quando configuro o produto com cor "Azul", tamanho "M" e quantidade "2"
    Então o produto deve ser configurado de acordo com minhas escolhas

   Esquema do Cenario: Validação de seleções obrigatórias
    Quando tento adicionar um produto ao carrinho sem selecionar <cor>, <tamanho> ou <quantidade>
    Então devo ver um toast de erro indicando que cor, tamanho e quantidade são obrigatórios

    Exemplos:
      | cor   | tamanho | quantidade |
      | ""    | "M"     | "1"        |
      | "Azul"| ""      | "1"        |
      | "Verde"| "P"    | ""         |

  Cenário: Limite máximo de quantidade por venda
    Quando tento adicionar 10 unidades de um produto ao carrinho
    Então devo ver uma mensagem confirmando a adição de meus produtos ao carrinho de compras
    E devo ser informado sobre meu desejo de finalizar a compra ou continuar comprando

  Cenário: Quebra de limite máximo de quantidade por venda
    Quando tento adicionar 11 unidades de um produto ao carrinho
    Então devo ver uma mensagem informando que excedi o limite de 10 produtos por venda
    E devo poder continuar a configuração de minha compra

  Cenário: Limpar seleções com o botão "Limpar"
    Dado que configuro o produto com cor "Azul", tamanho "M" e quantidade "2"
    Quando clico no botão "Limpar"
    Então as seleções de cor, tamanho e quantidade devem ser redefinidas para o estado original
    E o produto no carrinho deve ser exibido sem qualquer configuração


