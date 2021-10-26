*** Settings ***
Documentation    Testes Mobile

Resource             ../resources/package.robot

Test Setup           Abrir aplicativo
#Test Teardown        Fechar aplicativo

*** Test Cases ***

Caso de Teste 01: Pesquisar canal “Prime Experts”​
    [Tags]         SEARCH
    Dado que o cliente esteja na tela de home​
    E pesquise um vídeo sobre "Prime Experts"​
    E acessar o canal da Prime​
    Quando clicar em Inscrever-se​
    Então será apresentado como Inscrito​

Caso de Teste 02: Logar no YouTube
    [Tags]         LOGIN
    Dado que o cliente esteja na tela de home​
    E faça o login no aplicativo com sua conta
Caso de Teste 03: Usar método Swipe na tela
    [Tags]         SWIPE
    Dado que o cliente esteja na tela de home​
    Quando o cliente entrar no menu Explorar
    E usar o swipe da tela até o 10 item da tela
    E clicar no vídeo
    Então o vídeo deverá abrir o vídeo para o cliente

