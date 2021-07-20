*** Settings ***
Resource             ../steps/Sampleapp_steps.robot
Resource             ../resources/Sampleapp_resources.robot

Library              SeleniumLibrary

Test Setup           Abrir navegador
Test Teardown        Fechar navegador

 # robot -d ./reports tests_case/Sampleapp_tests.robot

*** Test Cases ***
CT1: Solicitando seguro de veículo
    Dado que entro no site
    Quando acesso o menu de motocicletas 
    E preencho a aba Enter Vehicle Data nas áreas de marca "Suzuki", modelo "Motorcycle", capacidade do cilindro "150", desempenho do motor "238", data de fabricação "04/07/2015", número de assentos "1", preço de tabela "2700", núm. de matrícula "1827364591", milhagem anual "8000"
    E preencho o formulário da aba Insurant Data nas áreas de nome "enzo", sobrenome "pereira", data de nascimento "05/06/2002", gênero "Male", endereço "Alameda grajaú", país "Brazil", código postal "06454050", cidade "São Paulo", ocupação "Unemployed" e hobbie "Speeding"
    E preencho o formulário da aba Product Data nas áreas ínicio do seguro "09/15/2021", soma do seguro "10000000", seguro de danos "Full Coverage", produtos opcionais "Euro Protection"
    E preencho o formulário da aba Price Option nas áreas do plano desejado "Silver"
    E preencho o formulário da aba Send Quote nas áreas de email "enzo001@gmail.com", nome de úsuario "EnzoPereira", senha "Enzo423" e confirmação de senha
    Então envio a solicitação de seguro "Sending e-mail success!"