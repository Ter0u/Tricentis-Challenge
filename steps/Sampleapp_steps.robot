*** Settings ***
Resource        ../pages/Sampleapp_pages.robot
Resource    ../resources/Sampleapp_resources.robot

Library         SeleniumLibrary
Library         AutoRecorder


# robot -d ./reports tests_case/Sampleapp_tests.robot

*** Keywords ***

Dado que entro no site
    Olha se Existe                                               ${logo}


Quando acesso o menu de motocicletas 
    Verifica Se Item Esta Na Tela                                ${motocicletas}
    Olha se Existe                                               ${make_combobox}


E preencho a aba Enter Vehicle Data nas áreas de marca "${make_}", modelo "${model_}", capacidade do cilindro "${cc}", desempenho do motor "${motor}", data de fabricação "${fabr.date}", número de assentos "${assentos_num}", preço de tabela "${tab.price}", núm. de matrícula "${matricula}", milhagem anual "${milha.anual}"
    Verifica Se ComboBox Esta Na Tela                            ${make_combobox}          ${make_}
    Verifica Se ComboBox Esta Na Tela                            ${model_combobox}         ${model_}
    Verifica Se Input Esta Na Tela                               ${cilindradas}            ${cc}
    Verifica Se Input Esta Na Tela                               ${engening_perf}          ${motor}
    Verifica Se Input Esta Na Tela                               ${manufatura_data}        ${fabr.date}
    Verifica Se ComboBox Esta Na Tela                            ${assentos_combobox}      ${assentos_num}
    Verifica Se Input Esta Na Tela                               ${tab_preço}              ${tab.price}
    Verifica Se Input Esta Na Tela                               ${milhagem_anual}         ${milha.anual}
    Verifica Se Item Esta Na Tela                                ${next}


E preencho o formulário da aba Insurant Data nas áreas de nome "${name}", sobrenome "${sobrenome}", data de nascimento "${birth}", gênero "${gender}", endereço "${adress}", país "${country}", código postal "${codepost}", cidade "${city}", ocupação "${occupation_}" e hobbie "${hobbies_}"
    Verifica Se Input Esta Na Tela                               ${first_name}             ${name}
    Verifica Se Input Esta Na Tela                               ${last_name}              ${sobrenome}
    Verifica Se Input Esta Na Tela                               ${birth_day}              ${birth}               
    Verifica CheckBox Gender e seleciona                         ${genero}                 ${gender}
    Verifica Se Input Esta Na Tela                               ${endereco}               ${adress}
    Verifica Se ComboBox Esta Na Tela                            ${country_combobox}       ${country}
    Verifica Se Input Esta Na Tela                               ${codigo_postal}          ${codepost}
    Verifica Se Input Esta Na Tela                               ${cidade}                 ${city}
    Verifica Se ComboBox Esta Na Tela                            ${ocupacao_combobox}      ${occupation_}
    Verifica CheckBox Hobbies e seleciona                        ${hobbies_combobox}       ${hobbies_}
    Verifica Se Item Esta Na Tela                                ${next2}                 


E preencho o formulário da aba Product Data nas áreas ínicio do seguro "${start_date}", soma do seguro "${soma_}", seguro de danos "${damage_}", produtos opcionais "${product_op}"
    Verifica Se Input Esta Na Tela                               ${inicio_data}            ${start_date}
    Verifica Se ComboBox Esta Na Tela                            ${soma_seguro}            ${soma_}
    Verifica Se ComboBox Esta Na Tela                            ${danos_seguro}           ${damage_}
    Verifica CheckBox Optional Products e seleciona              ${products_opcao}         ${product_op}
    Verifica Se Item Esta Na Tela                                ${next3}


E preencho o formulário da aba Price Option nas áreas do plano desejado "${plano}"
    Verifica CheckBox Select Price Option e seleciona            ${valores_planos}         ${plano}
    Verifica Se Item Esta Na Tela                                ${next4}


E preencho o formulário da aba Send Quote nas áreas de email "${email_user}", nome de úsuario "${user}", senha "${password}" e confirmação de senha
    Verifica Se Input Esta Na Tela                               ${email}                  ${email_user}
    Verifica Se Input Esta Na Tela                               ${usuario}                ${user}
    Verifica Se Input Esta Na Tela                               ${senha}                  ${password}
    Verifica Se Input Esta Na Tela                               ${confirm_senha}          ${password}
    Verifica Se Item Esta Na Tela                                ${botao_envio_email}


Então envio a solicitação de seguro "${mensagem_confirm}"
    Verifica Se Mensagem Sucesso Esta Na Tela e confirma         ${botao_confirm}          ${mensagem_confirm}

