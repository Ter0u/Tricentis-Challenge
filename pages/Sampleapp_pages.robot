*** Variables ***

${logo}                            xpath=//img[@id='tricentis_logo']
${motocicletas}                    xpath=//div[@class='main-navigation']//a[@id='nav_motorcycle']
${make_combobox}                   xpath=//select[@id='make']
${model_combobox}                  xpath=//select[@id='model']
${cilindradas}                     xpath=//input[@id='cylindercapacity']               
${engening_perf}                   xpath=//input[@id='engineperformance']
${manufatura_data}                 xpath=//input[@id='dateofmanufacture']
${assentos_combobox}               xpath=//select[@id='numberofseatsmotorcycle']
${tab_preço}                       xpath=//input[@id='listprice']
${milhagem_anual}                  xpath=//input[@id='annualmileage']
${next}                            xpath=//button[@id='nextenterinsurantdata']

#########################################################################

${first_name}                      xpath=//input[@id='firstname']
${last_name}                       xpath=//input[@id='lastname']
${birth_day}                       xpath=//input[@id='birthdate']
${genero}                          xpath=//div[@class='field']//label[contains(text(),'Gender')]
${genero_masc}                     xpath=//label[@class='ideal-radiocheck-label'][1]//span[@class='ideal-radio']
${genero_fema}                     xpath=//label[@class='ideal-radiocheck-label'][2]//span[@class='ideal-radio']
${endereco}                        xpath=//input[@id='streetaddress']
${country_combobox}                xpath=//select[@id='country']
${codigo_postal}                   xpath=//input[@id='zipcode']
${cidade}                          xpath=//input[@id='city']
${ocupacao_combobox}               xpath=//select[@id='occupation']
${hobbies_combobox}                xpath=//div[@class='field idealforms-field idealforms-field-checkbox']//label[contains(text(),'Hobbies')]
${Speeding}                        xpath=//section[@style='display: block;']//label[@class='ideal-radiocheck-label'][1]//span[@class='ideal-check']
${Bungee_jumping}                  xpath=//section[@style='display: block;']//label[@class='ideal-radiocheck-label'][2]//span[@class='ideal-check']
${Cliff_diving}                    xpath=//section[@style='display: block;']//label[@class='ideal-radiocheck-label'][3]//span[@class='ideal-check']
${Skydiving}                       xpath=//section[@style='display: block;']//label[@class='ideal-radiocheck-label'][4]//span[@class='ideal-check']
${Other}                           xpath=//section[@style='display: block;']//label[@class='ideal-radiocheck-label'][5]//span[@class='ideal-check']
${next2}                           xpath=//button[@id='nextenterproductdata']

#########################################################################

${inicio_data}                     xpath=//input[@id='startdate']
${soma_seguro}                     xpath=//select[@id='insurancesum']
${danos_seguro}                    xpath=//select[@id='damageinsurance']
${products_opcao}                  xpath=//div[@class='field idealforms-field idealforms-field-checkbox']//label[contains(text(),'Optional Products')]
${Euro_Protection}                 xpath=//section[@style='display: block;']//label[@class='ideal-radiocheck-label'][1]//span[@class='ideal-check']
${Legal_Defense_Insurance}         xpath=//section[@style='display: block;']//label[@class='ideal-radiocheck-label'][2]//span[@class='ideal-check']
${next3}                           xpath=//button[@id='nextselectpriceoption']      

#########################################################################

${valores_planos}                  xpath=//table[@id='priceTable']
${silver_plano}                    xpath=//label[@class='choosePrice ideal-radiocheck-label'][1]//span[@class='ideal-radio']
${gold_plano}                      xpath=//label[@class='choosePrice ideal-radiocheck-label'][2]//span[@class='ideal-radio']
${platinum_plano}                  xpath=//label[@class='choosePrice ideal-radiocheck-label'][3]//span[@class='ideal-radio']
${ultimate_plano}                  xpath=//label[@class='choosePrice ideal-radiocheck-label'][4]//span[@class='ideal-radio']
${next4}                           xpath=//button[@id='nextsendquote']

#########################################################################

${email}                           xpath=//input[@id='email']
${usuario}                         xpath=//input[@id='username']
${senha}                           xpath=//input[@id='password']
${confirm_senha}                   xpath=//input[@id='confirmpassword']
${botao_envio_email}               xpath=//button[@id='sendemail']

#########################################################################

${botao_confirm}                   xpath=//button[@class='confirm']

