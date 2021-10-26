*** Settings ***
Documentation        Aqui estarão presentes todas as keywords dos testes Mobile.
Resource             ../package.robot 

*** Keywords ***

#Caso de teste 01

Dado que o cliente esteja na tela de Home​    
    Wait Until Element Is Visible                xpath=//*[contains(@text,'Início')]
    Wait Until Element Is Visible                ${YT.icon_logo}
E pesquise um vídeo sobre "${PESQUISA}"​
    Click Element                                accessibility_id=Pesquisar
    Wait Until Element Is Visible                id=search_edit_text 
    Input Text                                   id=search_edit_text            ${PESQUISA}
    Press Keycode                                66

E acessar o canal da Prime​
    Wait Until Element Is Visible        accessibility_id=Prime Experts - Parceria entre Prime Control e UniBrasil - 3 minutos e 38 segundos - Ir ao canal - Prime Control - 156 visualizações - há 1 ano - assistir o vídeo
    Click Element                        accessibility_id=Prime Experts - Parceria entre Prime Control e UniBrasil - 3 minutos e 38 segundos - Ir ao canal - Prime Control - 156 visualizações - há 1 ano - assistir o vídeo
Quando clicar em Inscrever-se​
    Wait Until Element Is Visible                ${YT.subscribe}
    Click Element                                ${YT.subscribe}
    
Então será apresentado como Inscrito​
    Page Should Contain Text                     INSCRITO
 
#Caso de teste 02

E faça o login no aplicativo com sua conta

    Click Element                        ${YT.icon_avatar}
    Wait Until Element Is Visible        ${LOGIN.button_login}
    Click Element                        ${LOGIN.button_login}

    Wait Until Element Is Visible        ${LOGIN.button_add_account}
    Click Element                        ${LOGIN.button_add_account}
    
    Wait Until Element Is Visible        ${LOGIN.input_email}
    Click Element                        ${LOGIN.input_email}
    Input Text                           ${LOGIN.input_email}    ${LOGIN.email}
    
    Wait Until Element Is Visible        ${LOGIN.next}
    Click Element                        ${LOGIN.next}
    
    Wait Until Element Is Visible        ${LOGIN.input_password}
    Click Element                        ${LOGIN.input_password}
    Input Text                           ${LOGIN.input_password}    ${LOGIN.password}

    Wait Until Element Is Visible        ${LOGIN.next}
    Click Element                        ${LOGIN.next}
    
    Wait Until Element Is Visible        ${LOGIN.accept}
    Click Element                        ${LOGIN.accept}  
    
    Wait Until Element Is Visible        ${LOGIN.gdrive}
    Click Element                        ${LOGIN.gdrive}
    
    Swipe  600  1500  640  100
    
    Wait Until Element Is Visible        ${LOGIN.accept2}
    Click Element                        ${LOGIN.accept2}

#Caso de teste 03 
Quando o cliente entrar no menu Explorar
    Click Element                        ${YT.explore}   
E usar o swipe da tela até o 10 item da tela
    
    FOR  ${i}  IN RANGE  0  10
        Swipe  580  1500  580  700
        Sleep  1
    END   
E clicar no vídeo
    Click Element At Coordinates    550    950
Então o vídeo deverá abrir o vídeo para o cliente
    Wait Until Page Contains        10 NOS VÍDEOS EM ALTA
    Page Should Contain Text        visualizações
    Page Should Contain Text        Compartilhar
