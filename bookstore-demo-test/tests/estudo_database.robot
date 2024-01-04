
*** Settings ***

Resource    ../resources/database.resource
Resource    ../resources/queries/data_base_queries.resource


*** Test Cases ***
Retornar todos os produtos

    Open database connection
    
    Retornar todos os produtos

    [Teardown]    Close database connection


Retornar produtos específicos   

    Open database connection

    @{retorno}    Query    select nome from produtos where nome in ('Fralda', 'Cueca');

    Log    RETORNO: @{retorno}    console=True
    Log    Produto específico da lista retornada: @{retorno}[0]    console=True
    Log    Produto específico da lista retornada: @{retorno}[1]    console=True
    
    [Teardown]    Close database connection


Retornar mensagem de alerta para produtos com quantidade zero
    
    Open database connection

    # ${quantidade_estoque} =    Valida estoque  

    # Log    Quantidade: ${quantidade_estoque}    console=True

    ${produtos} =     Valida estoque

    Log    {produtos}: ${produtos}
    Log    Os produtos ${produtos} estão com estoque zerados.    console=True

    

    
    [Teardown]    Close database connection


