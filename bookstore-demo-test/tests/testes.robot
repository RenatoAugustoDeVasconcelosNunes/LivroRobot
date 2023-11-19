*** Settings ***
Documentation    # Cenário:	Cadastro	com	sucesso	de	Pessoa	Física
#        Dado que estou na página da loja virtual
#            E acessei a área de cadastro
#        Quando preenche o formulário com meus dados
#            E cubmeto os dados do formulário
#            E aceito os termos de uso
#        Então devo receber uma mensagem de sucesso
#            E devo visualizar a opção de acessar meus pedidos
#            E devo visualizar a opção de acessar minha lista de desejos

Library    SeleniumLibrary
Library    FakerLibrary
Library    OperatingSystem
Resource    ../resources/page_objects//po_amazon/po_func_cadastrar.resource
Resource    ../resources/common.resource
Resource    ../resources/pages/pages_amazon/realizar_cadastro.resource
Resource    ../resources/pages/pages_amazon/realizar_cadastro.resource
Resource    ../resources/pages/pages_amazon/pesquisar_produto.resource
Resource    ../resources/dados_teste_amazon.resource
Resource    ../resources/pages/pages_amazon/adicionar_produto_carrinho.resource
Resource    ../resources/pages/pages_amazon/realizar_cadastro.resource
Resource    ../resources/dataprovider.resource
Resource    ../resources/common.resource
Resource    ../resources/pages/pages_amazon/realizar_cadastro.resource
Resource    ../resources/pages/pages_amazon/pesquisar_produto.resource
Resource    ../resources/pages/pages_amazon/adicionar_produto_carrinho.resource


*** Test Cases ***
Scenario: Success sign in as Natural Person
    Gerar dados fake    

    Log    NOME FAKE: ${NOME_FAKE}    console=True
    Log    EMAIL FAKE: ${EMAIL_FAKE}    console=True
    Log    SENHA FAKE: ${SENHA_FAKE}    console=True
    Log    SENHA FAKE: ${DATA_NASCIMENTO_FAKE}    console=True

    # Abrir site Amazon.com   
    # Realizar novo cadastro    ${NOME_FAKE}    ${EMAIL_FAKE}    ${SENHA_FAKE}    
    # ...                       msg_validação=Resolva este quebra-cabeça para proteger sua conta    

# Adicionar produto ao carrinho
#     [Tags]    Adicionar_Produto
#     Abrir site Amazon.com
#     Pesquisar produto    nome_produto=${nome_produto}
#     Adicionar produto no carrinho    qtd_produto=6
#     Valida quantidade adicionada ao carrinho

    








    




