*** Settings ***        
Library                         SeleniumLibrary
Library                         AutoRecorder

*** Variables ***
${browser}                    chrome
${url}                        http://sampleapp.tricentis.com/101/app.php

*** Keywords ***
Abrir navegador
    Open Browser                            ${url}          ${browser}
    Maximize Browser Window


Fechar navegador
    Close Browser


Seleciona Item Combo Box
    [Arguments]                             ${combobox}         ${itemcombobox}
    Sleep                                   1
    Wait Until Element Is Visible           ${combobox}                            30
    Click Element                           ${combobox}
    ${Item}                                 Set Variable                           ${combobox}//option[@value='${itemcombobox}']
    Capture Page Screenshot
    Wait Until Element Is Visible           ${Item}                                30
    Click Element                           ${Item}
    Capture Page Screenshot
    

Seleciona Item Check Box Gender
    [Arguments]                             ${element}
    IF                                      '${element}' == 'Male'
            Click No Item                   ${genero_masc}
    ELSE
            Click No Item                   ${genero_fema}
    END 
    Capture Page Screenshot


Seleciona Item Check Box Hobbies
    [Arguments]                             ${element}
    IF                                      '${element}' == 'Speeding'
            Click No Item                   ${Speeding}
    ELSE IF                                 '${element}' == 'Bungee Jumping' 
            Click No Item                   ${Bungee_jumping}
    ELSE IF                                 '${element}' == 'Cliff Diving'
            Click No Item                   ${Cliff_diving}
    ELSE IF                                 '${element}' == 'Skydiving'
            Click No Item                   ${Skydiving}
    ELSE IF                                 '${element}' == 'Other'
             Click No Item                  ${Other}
    END 


Seleciona Item Check Box Select Price Option
    [Arguments]                             ${element}
    IF                                      '${element}' == 'Silver'
            Click No Item                   ${silver_plano}
    ELSE IF                                 '${element}' == 'Gold' 
            Click No Item                   ${gold_plano}
    ELSE IF                                 '${element}' == 'Platinum'
            Click No Item                   ${platinum_plano}
    ELSE IF                                 '${element}' == 'Ultimate'
            Click No Item                   ${ultimate_plano}
    END 


Seleciona Item Check Box Optional Products
    [Arguments]                             ${element}
    IF                                      '${element}' == 'Euro Protection'
            Click No Item                   ${Euro_Protection}
    ELSE
            Click No Item                   ${Legal_Defense_Insurance}
    END 


Preencher Text
    [Arguments]                             ${input}                                ${Text}
    Sleep                                   2
    Wait Until Element Is Visible           ${input}                                30
    Click Element                           ${input}
    Input Text                              ${input}                                ${Text}
    Capture Page Screenshot


Click No Item
    [Arguments]                             ${item}
    Sleep                                   2
    Capture Page Screenshot
    Wait Until Element Is Visible           ${item}                                 30
    Click Element                           ${item}
    Sleep                                   2
    Capture Page Screenshot


Olha se Existe
    [Arguments]                             ${element}
    Sleep                                   2
    Wait Until Element Is Visible           ${element}                              30
    Capture Page Screenshot


Verifica Se Mensagem Sucesso Esta Na Tela e confirma
    [Arguments]                             ${pageObject}                           ${mensagem}
    ${success_mens}                         Set Variable                            //*[contains(text(), '${mensagem}')]
    Wait Until Element Is Visible           ${success_mens}                         30
    Sleep                                   1
    Capture Page Screenshot
    Click Element                           ${pageObject}
    Sleep                                   1
    Capture Page Screenshot

Verifica Se ComboBox Esta Na Tela
    [Arguments]                             ${pageObject}                           ${opção}
    ${Status}                               Run Keyword And Return Status           Olha se Existe                              ${pageObject}          
    Run Keyword If                          '${Status}' == 'True'           Seleciona Item Combo Box                            ${pageObject}   ${opção}    


Verifica Se Input Esta Na Tela
    [Arguments]                             ${pageObject}                           ${opção}
    ${Status}                               Run Keyword And Return Status           Olha se Existe                              ${pageObject}          
    Run Keyword If                          '${Status}' == 'True'               Preencher Text                                  ${pageObject}   ${opção}


Verifica Se Item Esta Na Tela
    [Arguments]                             ${pageObject}
    ${Status}                               Run Keyword And Return Status           Olha se Existe                              ${pageObject}          
    Run Keyword If                          '${Status}' == 'True'               Click No Item                                   ${pageObject}


Verifica CheckBox Gender e seleciona
    [Arguments]                             ${pageObject}                           ${opção}
    ${Status}                               Run Keyword And Return Status           Olha se Existe                              ${pageObject}
    Run Keyword If                          '${Status}' == 'True'               Seleciona Item Check Box Gender                 ${opção}   


Verifica CheckBox Hobbies e seleciona
    [Arguments]                             ${pageObject}                           ${opção}
    ${Status}                               Run Keyword And Return Status           Olha se Existe                              ${pageObject}
    Run Keyword If                          '${Status}' == 'True'               Seleciona Item Check Box Hobbies                ${opção}   
    

Verifica CheckBox Select Price Option e seleciona
    [Arguments]                             ${pageObject}                           ${opção}
    ${Status}                               Run Keyword And Return Status           Olha se Existe                              ${pageObject}
    Run Keyword If                          '${Status}' == 'True'          Seleciona Item Check Box Select Price Option         ${opção} 


Verifica CheckBox Optional Products e seleciona
    [Arguments]                             ${pageObject}                           ${opção}
    ${Status}                               Run Keyword And Return Status           Olha se Existe                              ${pageObject}
    Run Keyword If                          '${Status}' == 'True'          Seleciona Item Check Box Optional Products           ${opção}   
        