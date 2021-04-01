# -*- coding: utf-8 -*-

import AKCC55_Config

koolprog_version = " KoolProg-Version no. 4.2.0"

window_property = {
    "home": {
             
         "help": {
                  "header_text" : "Help"
                  },
         "about" : {
                    "header_text" : "About",
                    "X_button_text" : "X",
                    "koolprog_label_text" : "KoolProg®",
                    "close_button_text" : "Close",
                    "version_label" : "Version",
                    "version_text" : "4.2.0.28136",
                    "copyright_Label" : "© 2015-2020 Danfoss A/S.All rights reserved"
                    },
             "label" : {"set_parameter" : "Set parameters",
                        "copy_to_controller" : "Copy to controller",
                        "on_line_service" : "On-line service",
                        "koolprog_website" : "www.danfoss.com"
                        },
             
             "Language" : {"Chinese (Simplified) Legacy": {"Set_Parameter" : "设置参数",
                        "Copy_To_Controller" : "下载到控制器",
                        "On_Line_Service" : "在线服务",
                        "text" : {
                                  "chinese_ok_button" : "好"
                                  }

                               },
             
            "Danish (Denmark)": {"Set_Parameter" : "Indstil parametre",
                        "Copy_To_Controller" : "Kopiér til regulator",
                        "On_Line_Service" : "Onlinetjeneste",
                               },
             
            "English (United Kingdom)": {"Set_Parameter" : "Set parameters",
                        "Copy_To_Controller" : "Copy to controller",
                        "On_Line_Service" : "On-line service",
                               },
                           
            "French (France)": {"Set_Parameter" : "Définir les paramètres",
                        "Copy_To_Controller" : "Copier vers le régulateur",
                        "On_Line_Service" : "Test de service",
                               },
                           
            "German (Germany)": {"Set_Parameter" : "Voreingestellte Parameter",
                        "Copy_To_Controller" : "Auf den Regler kopieren",
                        "On_Line_Service" : "Servicetests",
                               },
                           
            "Italian (Italy)": {"Set_Parameter" : "Imposta parametri",
                        "Copy_To_Controller" : "Copia nel regolatore",
                        "On_Line_Service" : "Test di servizio",
                               },
            
            "Portuguese (Brazil)": {"Set_Parameter" : "Definir parâmetros",
                        "Copy_To_Controller" : "Copiar para o controlador",
                        "On_Line_Service" : "Teste de serviço",
                               },
            
            "Russian (Russia)": {"Set_Parameter" : "Задать параметры",
                        "Copy_To_Controller" : "Копирование параметров в контроллер",
                        "On_Line_Service" : "Сервисное тестирование",
                               },
            "Spanish (Spain, International Sort)": {"Set_Parameter" : "Establecer parámetros",
                        "Copy_To_Controller" : "Copia al controlador",
                        "On_Line_Service" : "Prueba de servicio",
                        "text" : {
                                  "Spanish (Spain, International Sort)_ok_button" : "Aceptar"
                                  },
                                },
                   
            "English (United States)": {"Set_Parameter" : "Set parameters",
                        "Copy_To_Controller" : "Copy to controller",
                        "On_Line_Service" : "On-line service",
                               },
                           },
             
        "set_parameter_win": {
            "tooltip": {"close_button": "Close",
                        "new_button": "Create a new configuration" ,
                        "open_button" : "Open a config file",
                        "import_controller_model" : "Import controller model",
                        "import_settings_from_controller" : "Import parameter values from connected controller to KoolProg (PC)"
                        },

            "NewProject_Product_Details_Selection_Window": {
                "label": {"project_name_description_label": "Give your project filename and description",
                          "project_name_label": "Project Name (Max 20 Characters)",
                          "project_description_label": "Project Description (Max 250 Characters)",
                          "finish_button_label_value": "FINISH",
                          "next_button_label_value": "NEXT >",
                          "back_button_label_value": "< BACK ",
                          "cancel_button_label_value": "CANCEL"
                          },
                    "Language":{
                            "Danish (Denmark)": {
                        "label": {
                                  "select_controller_code_number_and_sw_version_label" : "Vælg styreenhedskodenummer og produktversion",
                                  "code_number_label" : "Bestillingsnummer : ",
                                  "sw_version_label" : "Softwareversion:",
                                  "project_name_description_label": "Angiv dit projektfilnavn og beskrivelse",
                                   "project_name_label": "Projektnavn (maks. 20 tegn)",
                                   "project_description_label": "Projektbeskrivelse (maks. 250 tegn)",
                                   "use_wizard_label" : "Brug en guide til regulatorkonfiguration",
                                   "header_label": "Nyt projekt"
                                 },
                        "button" : {
                                    "next_button_label_value" : "NÆSTE >",
                                    "back_button_label_value" : "< TILBAGE ",
                                    "cancel_button_label_value" : "ANNULLER",
                                    "finish_button_label_value" : "AFSLUT"
                                    },
                                     
                            },
                            "French (France)": {
                        "label": {
                                  "select_controller_code_number_and_sw_version_label" : "Sélectionnez le numéro de code du contrôleur et la version du produit",
                                  "code_number_label" : "N° de code :",
                                  "sw_version_label" : "Version logicielle :",
                                  "project_name_description_label": "Donnez à votre projet un nom de fichier et une description",
                                   "project_name_label": "Nom du projet (max. 20 caractères)",
                                   "project_description_label": "Description du projet (max. 250 caractères)",
                                   "use_wizard_label" : "Utiliser un assistant pour la configuration du régulateur",
                                   "header_label": "Nouveau projet"
                                 },
                        "button" : {
                                    "next_button_label_value" : "SUIVANT >",
                                    "back_button_label_value" : "< RETOUR",
                                    "cancel_button_label_value" : "ANNULER",
                                    "finish_button_label_value" : "TERMINER"
                                    },
                                     
                            },
                            "Spanish (Spain, International Sort)": {
                        "label": {
                                  "select_controller_code_number_and_sw_version_label" : "Seleccione el número de código del controlador y la versión del producto",
                                  "code_number_label" : "Código:",
                                  "sw_version_label" : "Versión del software:",
                                  "project_name_description_label": "Dé un nombre de fichero y descripción a su proyecto",
                                   "project_name_label": "Nombre del proyecto (máx. 20 caracteres)",
                                   "project_description_label": "Descripción del proyecto (máx. 250 caracteres)",
                                   "use_wizard_label" : "Utilizar un asistente para la configuración del controlador",
                                   "header_label": "Nuevo proyecto"
                                 },
                        "button" : {
                                    "next_button_label_value" : "SIGUIENTE >",
                                    "back_button_label_value" : "< ATRÁS",
                                    "cancel_button_label_value" : "CANCELAR",
                                    "finish_button_label_value" : "FINALIZAR"
                                    },
                                     
                            },
                            "German (Germany)": {
                        "label": {
                                  "select_controller_code_number_and_sw_version_label" : "Wählen Sie Controller-Code-Nummer und Produktversion",
                                  "code_number_label" : "Artikelnummer:",
                                  "sw_version_label" : "Softwareversion:",
                                  "project_name_description_label": "Geben Sie einen Dateinamen und eine Beschreibung für Ihr Projekt ein",
                                   "project_name_label": "Projektname (max. 20 Zeichen)",
                                   "project_description_label": "Projektbeschreibung (max. 250 Zeichen)",
                                   "use_wizard_label" : "Assistenten für die Reglerkonfiguration verwenden",
                                   "header_label": "Neues Projekt"
                                 },
                        "button" : {
                                    "next_button_label_value" : "WEITER >",
                                    "back_button_label_value" : "< ZURÜCK",
                                    "cancel_button_label_value" : "ABBRECHEN",
                                    "finish_button_label_value" : "FERTIGSTELLEN"
                                    },
                                     
                            },
                            "Portuguese (Brazil)": {
                        "label": {
                                  "select_controller_code_number_and_sw_version_label" : "Selecione o número do código do controlador e a versão do produto",
                                  "code_number_label" : "Código:",
                                  "sw_version_label" : "Versão do software:",
                                  "project_name_description_label": "Insira um nome de arquivo e uma descrição para o seu projeto",
                                   "project_name_label": "Nome do projeto (Máx. de 20 caracteres)",
                                   "project_description_label": "Descrição do projeto (Máx. de 250 caracteres)",
                                   "use_wizard_label" : "Utilize um assistente para configurar o controlador",
                                   "header_label": "Novo projeto"
                                 },
                        "button" : {
                                    "next_button_label_value" : "PRÓXIMO >",
                                    "back_button_label_value" : "< VOLTAR",
                                    "cancel_button_label_value" : "CANCELAR",
                                    "finish_button_label_value" : "CONCLUIR"
                                    },
                                     
                            },
                                "Russian (Russia)": {
                        "label": {
                                  "select_controller_code_number_and_sw_version_label" : "Выберите номер кода контроллера и версию продукта",
                                  "code_number_label" : "Числовой код:",
                                  "sw_version_label" : "Версия ПО:",
                                  "project_name_description_label": "Укажите имя файла проекта и описание",
                                   "project_name_label": "Название проекта (макс. 20 символов)",
                                   "project_description_label": "Описание проекта (макс. 250 символов)",
                                   "use_wizard_label" : "Используйте мастер для конфигурации контроллера",
                                   "header_label": "Новый проект"
                                 },
                        "button" : {
                                    "next_button_label_value" : "ДАЛЕЕ >",
                                    "back_button_label_value" : "< НАЗАД",
                                    "cancel_button_label_value" : "ОТМЕНА",
                                    "finish_button_label_value" : "ГОТОВО"
                                    },
                                     
                            },
                              "Chinese (Simplified) Legacy": {
                        "label": {
                                  "select_controller_code_number_and_sw_version_label" : "选择控制器代码号和软件版本",
                                  "code_number_label" : "数字代码:",
                                  "sw_version_label" : "软件版本:",
                                  "project_name_description_label": "请给项目命名及描述",
                                   "project_name_label": "项目名称（最多20个字符）",
                                   "project_description_label": "项目描述（最多250个字符）",
                                   "use_wizard_label" : "使用向导进行控制器配置",
                                   "header_label": "新建项目"
                                 },
                        "button" : {
                                    "next_button_label_value" : "下一个>",
                                    "back_button_label_value" : "< 返回",
                                    "cancel_button_label_value" : "取消",
                                    "finish_button_label_value" : "完成"
                                    },
                                     
                            },
                             "Italian (Italy)": {
                        "label": {
                                  "select_controller_code_number_and_sw_version_label" : "Selezionare il numero di codice del controller e la versione del prodotto",
                                  "code_number_label" : "Numero di codice:",
                                  "sw_version_label" : "Versione software:",
                                  "project_name_description_label": "Fornire il nome del file e la descrizione di progetto",
                                   "project_name_label": "Nome progetto (max 20 caratteri)",
                                   "project_description_label": "Descrizione progetto (max 250 caratteri)",
                                   "use_wizard_label" : "Utilizzo di una procedura guidata per la configurazione del regolatore",
                                   "header_label": "Nuovo progetto"
                                 },
                        "button" : {
                                    "next_button_label_value" : "AVANTI >",
                                    "back_button_label_value" : "< INDIETRO",
                                    "cancel_button_label_value" : "ANNULLA",
                                    "finish_button_label_value" : "FINITO"
                                    },
                                     
                            },
                            "English (United States)": {
                        "label": {
                                  "select_controller_code_number_and_sw_version_label" : "Select Controller Code number and Software version",
                                  "code_number_label" : "Code Number:",
                                  "sw_version_label" : "Software version:",
                                   "project_name_description_label": "Give your project filename and description",
                                   "project_name_label": "Project Name (Max 20 Characters)",
                                   "project_description_label": "Project Description (Max 250 Characters)",
                                   "use_wizard_label" : "Use a wizard for controller configuration",
                                   "header_label": "New project"
                                 },
                        "button" : {
                                    "finish_button_label_value": "FINISH",
                                      "next_button_label_value": "NEXT >",
                                      "back_button_label_value": "< BACK ",
                                      "cancel_button_label_value": "CANCEL"
                                    },
                                     
                            },
                             "English (United Kingdom)": {
                        "label": {
                                  "select_controller_code_number_and_sw_version_label" : "Select Controller Code number and Software version",
                                  "code_number_label" : "Code Number:",
                                  "sw_version_label" : "Software version:",
                                   "project_name_description_label": "Give your project filename and description",
                                   "project_name_label": "Project Name (Max 20 Characters)",
                                   "project_description_label": "Project Description (Max 250 Characters)",
                                   "use_wizard_label" : "Use a wizard for controller configuration",
                                   "header_label": "New project"
                                 },
                        "button" : {
                                    "finish_button_label_value": "FINISH",
                                      "next_button_label_value": "NEXT >",
                                      "back_button_label_value": "< BACK ",
                                      "cancel_button_label_value": "CANCEL"
                                    },
                                     
                            },
                        },
                "Controller_Variant_List" : {
                                             "AK-CC55" : ["AK-CC55 Compact","AK-CC55 Single Coil","AK-CC55 Multi Coil"]
                                             },
                "tooltip": {
                    "close_button": "Close"
                },

                "next_cancel_finish_back_buttons": {"EKE1x": ["next", "cancel", "back"],
                                                    "AK-CC55": ["next", "cancel", "back"],
                                                    "ETC1Hx": ["finish", "cancel", "back"],
                                                    "EET": ["finish", "cancel", "back"],
                                                    "ERC11x": ["finish", "cancel", "back"],
                                                    "ERC21x": ["finish", "cancel", "back"]},
                "text_length": {
                    "project_name_length": 20,
                    "project_description_length": 250
                },
            },
                              
            "NewProject_Controller_Selection_Window": {
                "label": {"header_value": "New project",
                          "select_controller_model_label_text": "Select controller model"
                          },
                "Language":{
                            "Danish (Denmark)": {
                                    "label": {
                                              "header_value": "Nyt projekt",
                                              "select_controller_model_label_text": "Vælg regulatormodel"
                                             },
                                    "button" : {
                                                "next_button" : "NÆSTE >"
                                                },
                                     
                                     },
                             "French (France)": {
                                    "label": {
                                              "header_value": "Nouveau projet",
                                              "select_controller_model_label_text": "Sélectionner le modèle du régulateur"
                                             },
                                    "button" : {
                                                "next_button" : "SUIVANT >"
                                                },
                                     
                                     },
                            "Spanish (Spain, International Sort)": {
                                    "label": {
                                              "header_value": "Nuevo proyecto",
                                              "select_controller_model_label_text": "Seleccionar modelo del controlador"
                                             },
                                    "button" : {
                                                "next_button" : "SIGUIENTE >"
                                                },
                                     
                                     },
                             "German (Germany)": {
                                    "label": {
                                              "header_value": "Neues Projekt",
                                              "select_controller_model_label_text": "Reglermodell auswählen"
                                             },
                                    "button" : {
                                                "next_button" : "WEITER >"
                                                },
                                     
                                     },
                            "Portuguese (Brazil)": {
                                                    "label": {
                                              "header_value": "Novo projeto",
                                              "select_controller_model_label_text": "Selecionar modelo do controlador"
                                             },
                                    "button" : {
                                                "next_button" : "PRÓXIMO >"
                                                },
                                     
                                     },
                            "Russian (Russia)": {
                                                    "label": {
                                              "header_value": "Новый проект",
                                              "select_controller_model_label_text": "Выберите модель контроллера"
                                             },
                                    "button" : {
                                                "next_button" : "ДАЛЕЕ >"
                                                },
                                     
                                     },
                            "Chinese (Simplified) Legacy": {
                                                    "label": {
                                              "header_value": "新建项目",
                                              "select_controller_model_label_text": "选择控制器模型"
                                             },
                                    "button" : {
                                                "next_button" : "下一个>"
                                                },
                                     
                                     },
                            "Italian (Italy)": {
                                                    "label": {
                                              "header_value": "Nuovo progetto",
                                              "select_controller_model_label_text": "Seleziona modello regolatore"
                                             },
                                    "button" : {
                                                "next_button" : "AVANTI >"
                                                },
                                     
                                     },
                            "English (United Kingdom)": {
                                                    "label": {
                                              "header_value": "New project",
                                              "select_controller_model_label_text": "Select controller model"
                                             },
                                    "button" : {
                                                "next_button" : "NEXT >"
                                                },
                                     
                                     },
                            "English (United States)": {
                                                    "label": {
                                              "header_value": "New project",
                                              "select_controller_model_label_text": "Select controller model"
                                             },
                                    "button" : {
                                                "next_button" : "NEXT >"
                                                },
                                     
                                     },
                            },

                "tooltip": {
                    "close_button": "Close"
                },                                       
            },
        },
},
              
"Preference_Window" : {
                            "label" : {
                                       "text" : {
                                                 "header_label" : "Preferences",
                                                 "Language_Label" : "Language:", 
                                                 "Save Files On_Label" : "Save Files on:",
                                                 "Unit_Label" : "Unit:",
                                                 "CAN_Baudrate_label" : "CAN Baudrate:",
                                                 "Use password protection" : "Use password protection",
                                                 }
                                       },
                                       
                            "button" : {
                                        "text" :  {
                                                   "Browse_Button" : "Browse..",
                                                   "Save_Button" : "Save",
                                                   }

                                      },
                            "languages":
                                {
                                 "Danish":{
                                            "Danish (Denmark)":
                                     
                                            {
                                                 "label" : {
                                                       "text" : {
                                                                 "header_label" : "Præferencer",
                                                                 "Language_Label" : "Sprog:", 
                                                                 "Only_AKCC_label" : "Kun til AK-CC55",
                                                                 "Save Files On_Label" : "Gem filer på:",
                                                                 "Unit_Label" : "Enhed:",
                                                                 "CAN_Baudrate_label" : "CAN-baudrate:",
                                                                 "Use password protection" : "Brug adgangskodebeskyttelse",
                                                                 "Application Restart Message" : "Application will restart! Do you want to proceed?",
                                                                 "Saved Successfully Message" : "Korrekt gemt",   
                                                                 }
                                                       },
                                                       
                                                "button" : {
                                                        "text" :  {
                                                                   "Browse_Button" : "Gennemse..",
                                                                   "Save_Button" : "Gem",
                                                                   "Cancel_Button" : "Annuller",
                                                                   "X_Button" : "X",
                                                                   }
                    
                                                          },
                                              },
                                           },
                                 "French" : {
                                             "French (France)":{
                                                                "label" : {
                                                                   "text" : {
                                                                             "header_label" : "Préférences",
                                                                             "Language_Label" : "Langue :", 
                                                                             "Save Files On_Label" : "Sauvegarder les fichiers sur :",
                                                                             "Only_AKCC_label" : "Uniquement pour AK-CC55",
                                                                             "Unit_Label" : "Unité :",
                                                                             "CAN_Baudrate_label" : "Débit en bauds CAN :",
                                                                             "Use password protection" : "Utiliser la protection par mot de passe",
                                                                             "Application Restart Message" : "L'application va redémarrer ! Voulez-vous continuer ?",
                                                                             "Saved Successfully Message" : "Sauvegardé avec succès",                                                                             
                                                                             }
                                                                           },
                                           
                                                                "button" : {
                                                                        "text" :  {
                                                                                   "Browse_Button" : "Parcourir...",
                                                                                   "Save_Button" : "Sauvegarder",
                                                                                   "Cancel_Button" : "Annuler",
                                                                                   "X_Button" : "X",
                                                                                   }
                                    
                                                                          },
                                                                 },
                                                },
                                 "German":{
                                           "German (Germany)":{
                                                               "label" : {
                                                                   "text" : {
                                                                             "header_label" : "Voreinstellungen",
                                                                             "Language_Label" : "Sprache:", 
                                                                             "Save Files On_Label" : "Dateien speichern auf:",
                                                                             "Only_AKCC_label" : "Nur für AK-CC55",
                                                                             "Unit_Label" : "Einheit:",
                                                                             "CAN_Baudrate_label" : "CAN-Baudrate:",
                                                                             "Use password protection" : "Passwortschutz verwenden",
                                                                             "Application Restart Message" : "Anwendung startet neu! Möchten Sie fortfahren?",
                                                                             "Saved Successfully Message" : "Speichervorgang erfolgreich abgeschlossen",  
                                                                             }
                                                                   },
                                                            "button" : {
                                                                    "text" :  {
                                                                               "Browse_Button" : "Durchsuchen ...",
                                                                               "Save_Button" : "Speichern",
                                                                               "Cancel_Button" : "Abbrechen",
                                                                               "X_Button" : "X",
                                                                               }
                                
                                                                      },
                                                                    },
                                           },
                                 "Italian":{
                                          "Italian (Italy)":{
                                                             "label" : {
                                                               "text" : {
                                                                         "header_label" : "Preferenze",
                                                                         "Language_Label" : "Lingua:", 
                                                                         "Save Files On_Label" : "Salva file su:",
                                                                         "Only_AKCC_label" : "Solo per AK-CC55",
                                                                         "Unit_Label" : "Unità:",
                                                                         "CAN_Baudrate_label" : "Baud rate CAN:",
                                                                         "Use password protection" : "Utilizza protezione password",
                                                                         "Application Restart Message" : "L'applicazione verrà riavviata! Vuoi proseguire?",
                                                                         "Saved Successfully Message" : "Salvato correttamente",  
                                                                         }
                                                               },
                                                               
                                                        "button" : {
                                                                "text" :  {
                                                                           "Browse_Button" : "Sfoglia..",
                                                                           "Save_Button" : "Salva",
                                                                           "Cancel_Button" : "Annulla",
                                                                           "X_Button" : "X",
                                                                           }
                            
                                                                },
                                           },
                                          },
                                 "Spanish":{
                                            "Spanish (Spain, International Sort)":{
                                                                        "label" : {
                                                                           "text" : {
                                                                                     "header_label" : "Preferencias",
                                                                                     "Language_Label" : "Idioma:", 
                                                                                     "Save Files On_Label" : "Guardar ficheros en:",
                                                                                     "Only_AKCC_label" : "Solo para AK-CC55",
                                                                                     "Unit_Label" : "Unidad:",
                                                                                     "CAN_Baudrate_label" : "Velocidad de transferencia de datos CAN:",
                                                                                     "Use password protection" : "Utilizar protección por contraseña",
                                                                                     "Application Restart Message" : "¡La aplicación se reiniciará! ¿Quiere continuar?",
                                                                                     "Saved Successfully Message" : "Guardado con éxito",    
                                                                                     }
                                                                           },
                                                                           
                                                                    "button" : {
                                                                            "text" :  {
                                                                                       "Browse_Button" : "Buscar...",
                                                                                       "Save_Button" : "Guardar",
                                                                                       "Cancel_Button" : "Cancelar",
                                                                                       "X_Button" : "X",
                                                                                       }
                                        
                                                                              },
                                                },
                                          },
                                 "Russian":{
                                            "Russian (Russia)":{
                                                                        "label" : {
                                                                           "text" : {
                                                                                     "header_label" : "Настройки",
                                                                                     "Language_Label" : "Язык:", 
                                                                                     "Save Files On_Label" : "Сохранить файлы на:",
                                                                                     "Only_AKCC_label" : "Только для AK-CC55",
                                                                                     "Unit_Label" : "Ед. изм.:",
                                                                                     "CAN_Baudrate_label" : "Скорость шины CAN:",
                                                                                     "Use password protection" : "Использовать защиту с помощью пароля",
                                                                                     "Application Restart Message" : "Приложение перезапустится! Продолжить?",
                                                                                     "Saved Successfully Message" : "Успешно сохранено",                                                                                     
                                                                                     }
                                                                           },
                                                                           
                                                                    "button" : {
                                                                            "text" :  {
                                                                                       "Browse_Button" : "Обзор..",
                                                                                       "Save_Button" : "Сохранить",
                                                                                       "Cancel_Button" : "Отмена",
                                                                                       "X_Button" : "X",
                                                                                       }
                                        
                                                                              },
                                                },
                                          },
                                 "Chinese":{
                                             "Chinese (Simplified) Legacy":{
                                                                            "label" : {
                                           "text" : {
                                                     "header_label" : "属性设置",
                                                     "Language_Label" : "语言:", 
                                                     "Save Files On_Label" : "保存文件到 :",
                                                     "Only_AKCC_label" : "*仅用于AK-CC55",
                                                     "Unit_Label" : "单位:",
                                                     "CAN_Baudrate_label" : "CAN 波特率:",
                                                     "Use password protection" : "使用密码保护",
                                                     "Application Restart Message" : "应用程序将重启！你想继续吗？",
                                                     "Saved Successfully Message" : "已成功保存",                                                     
                                                     }
                                           },
                                           
                                    "button" : {
                                            "text" :  {
                                                       "Browse_Button" : "浏览...",
                                                       "Save_Button" : "保存",
                                                       "Cancel_Button" : "取消",
                                                       "X_Button" : "X",
                                                       }
        
                                              },
                                                },
                                            },
                                 "Portuguese":{
                                                 "Portuguese (Brazil)":{
                                                                        "label" : {
                                           "text" : {
                                                     "header_label" : "Preferências",
                                                     "Language_Label" : "Idioma:", 
                                                     "Save Files On_Label" : "Salvar arquivos em:",
                                                     "Only_AKCC_label" : "Apenas para AK-CC55",
                                                     "Unit_Label" : "Unidade:",
                                                     "CAN_Baudrate_label" : "Baudrate do CAN:",
                                                     "Use password protection" : "Utilizar proteção por senha",
                                                     "Application Restart Message" : "O aplicativo será reiniciado! Deseja continuar?",
                                                     "Saved Successfully Message" : "Salvo com sucesso",
                                                     }
                                           },
                                           
                                    "button" : {
                                            "text" :  {
                                                       "Browse_Button" : "Pesquisar...",
                                                       "Save_Button" : "Salvar",
                                                       "Cancel_Button" : "Cancelar",
                                                       "X_Button" : "X",
                                                       }
        
                                              },},
                                               
                                                },
                                  "English US":{
                                                  "English (United States)":{
                                                                              "label" : {
                                                                                   "text" : {
                                                                                            "Only_AKCC_label" :"*Only for AK-CC55",
                                                                                            "Application Restart Message" : "Application will restart! Do you want to proceed?",
                                                                                            "Saved Successfully Message" : "Saved Successfully",
                                                                                             },
                                                                                        },
                                                                              },
                                                  },
                                  "English UK":{
                                                  "English (United Kingdom)":{
                                                                              "label" : {
                                                                                   "text" : {
                                                                                            "Only_AKCC_label" :"*Only for AK-CC55",
                                                                                            "Application Restart Message" : "Application will restart! Do you want to proceed?",
                                                                                            "Saved Successfully Message" : "Saved Successfully",
                                                                                             }
                                                                                        },
                                                                              },
                                 },
                                },
                            "default_values" : {
                                                "language" : "English (United States)",
                                                "Unit" : "Metric",
                                                "CAN_Baudrate" : "Auto"
                                                },
                            "menu_bar" : {
                                          "text" : {
                                                    "default_username" : "Admin"
                                                    }
                                          },
                            
                            "password_protection" : {
                                                     "label" : {
                                                                "text" : {
                                                                           "password" : "Password",
                                                                           "confirm_password" : "Confirm password:",
                                                                           "*_msg" : "* Passwords are case sensitive",
                                                                           "show_password" : "Show password"
                                                                           },

                                                                "no_show_default_password" : "********",
                                                                "no_show_confirm_password" : "********",
                                                                "default_password" : "password",
                                                                "deafult_confirm_password" : "password"
                                                               },
                                                     "password_protection_window" : {
                                                                          "text" :{
                                                                                   
                                                                                   "header" : "Change user",
                                                                                   "label" : {
                                                                                              "user_label" : "User",
                                                                                              "password_label" : "Password:",
                                                                                              "*_message" : "* Username and password are case sensitive",
                                                                                              "show_password_label" : "Show password"
                                                                                              }                                                            

                                                                                   }
                                                                          } 
                                                              
                                                     
                                                     }
                            },       
                                 
    "Project_Window" :{
                       "Setparameter_title_lable" : "Set parameters",
                       "Project_Name_Label" : "Project Name:",
                       "Product_Name_Label": "Product Name:",
                       "Code_Number_Label" : "Code Number:",
                       "Software_Version_Label": "Software version:",
                       "software_version_mismatch" : "SW Version Mismatch",
                       "languages":
                                    {
                                        "Danish":{
                                                    "Danish (Denmark)":{
                                                                        "label" : {    
                                                                                    "Set_Parameter" : "Indstil parametre",
                                                                                    "Product_Name" : "Produktnavn:",
                                                                                    "Code_Number" : "Bestillingsnummer : ",
                                                                                    "Software_version" : "Softwareversion:",
                                                                                    "Project_Name" : "Projektnavn:",    
                                                                                    "Copy_To_Controller_text" : "KOPIÉR TIL REGULATOR",                                                                                                                                                     
                                                                                    }
                                                                        },
                                                 },
                                                            
                                        "French" : {
                                                    "French (France)":{
                                                                        "label" : {      
                                                                                    "Set_Parameter" : "DÉFINIR LES PARAMÈTRES",
                                                                                    "Product_Name" : "Nom du produit :",
                                                                                    "Code_Number" : "N° de code :", 
                                                                                    "Software_version" : "Version logicielle :",
                                                                                    "Project_Name" : "Nom du projet :",
                                                                                    "Copy_To_Controller_text" : "COPIER VERS LE RÉGULATEUR",                                                                                                         
                                                                                    },                                          
                                                                        },
                                                    },
                    
                                        "German": {
                                                    "German (Germany)":{
                                                                            "label" : {                
                                                                                         "Set_Parameter" : "VOREINGESTELLTE PARAMETER",
                                                                                         "Product_Name" : "Produktname:",
                                                                                         "Code_Number" : "Artikelnummer:", 
                                                                                         "Software_version" : "Softwareversion:",
                                                                                         "Project_Name" : "Projektname:",
                                                                                         "Copy_To_Controller_text" : "AUF DEN REGLER KOPIEREN",
                                                                                        },
                                                                        },
                                                 },   
                    
                                        "Italian":{
                                                    "Italian (Italy)":{
                                                                        "label" : {
                                                                                    "Set_Parameter" : "IMPOSTA PARAMETRI",
                                                                                    "Product_Name" : "Nome prodotto:",
                                                                                    "Code_Number" : "Numero di codice:", 
                                                                                    "Software_version" : "Versione software:",
                                                                                    "Project_Name" : "Nome progetto:",
                                                                                    "Copy_To_Controller_text" : "COPIA NEL REGOLATORE",
                                                                                    },
                    
                                                                        },
                                                },
                    
                                        "Spanish":{
                                                     "Spanish (Spain, International Sort)":{
                                                                                             "label" : {
                                                                                                            "Set_Parameter" : "ESTABLECER PARÁMETROS",
                                                                                                            "Product_Name" : "Nombre del producto:",
                                                                                                            "Code_Number" : "Código:", 
                                                                                                            "Software_version" : "Versión del software:",
                                                                                                            "Project_Name" : "Nombre del proyecto:",
                                                                                                            "Copy_To_Controller_text" : "COPIA AL CONTROLADOR",
                                                                                                         },
                                                                                               },                                                                
                                                            
                                                    },
                    
                                        "Chinese":{
                                                    "Chinese (Simplified) Legacy":{
                                                                                    "label" : {
                                                                                                    "Set_Parameter" : "设置参数",
                                                                                                    "Product_Name" : "产品名称 :",
                                                                                                    "Code_Number" : "数字代码：", 
                                                                                                    "Software_version" : "软件版本：",
                                                                                                    "Project_Name" : "项目名称 :",
                                                                                                    "Copy_To_Controller_text" : "下载到控制器",          
                                                                                                },                                          
                                                                                    },
                                                    },
                    
                                        "Russian":{
                                                    "Russian (Russia)":{
                                                                            "label" : { 
                                                                                            "Set_Parameter" : "ЗАДАТЬ ПАРАМЕТРЫ",
                                                                                            "Product_Name" : "Название продукта:",
                                                                                            "Code_Number" : "Числовой код:", 
                                                                                            "Software_version" : "Версия ПО:",
                                                                                            "Project_Name" : "Название проекта:",         
                                                                                        },                                          
                                                                        },
                                                    },                 
                                                               
                                        "Portuguese":{
                                                        "Portuguese (Brazil)":{
                                                                                "label" : {
                                                                                                "Set_Parameter" : "DEFINIR PARÂMETROS",
                                                                                                "Product_Name" : "Nome do produto:",
                                                                                                "Code_Number" : "Código:", 
                                                                                                "Software_version" : "Versão do software:",
                                                                                                "Project_Name" : "Nome do projeto:",
                                                                                                "Copy_To_Controller_text" : "COPIAR PARA O CONTROLADOR",
                                                                                            },                                           
                                                                               },                                                                              
                                                      
                                                    },     
                                     
                                        "English US":{
                                                        "English (United States)":{
                                                                                    "label" : {
                                                                                                    "Set_Parameter" : "Set parameters",
                                                                                                    "Product_Name" : "Product Name:",
                                                                                                    "Code_Number" : "Code Number : ", 
                                                                                                    "Software_version" : "Software version:",
                                                                                                    "Project_Name" : "Project Name:",
                                                                                                    "Copy_To_Controller_text" : "COPY TO CONTROLLER",
                                                                                                },                                           
                                                                               },                                                                              
                                                      
                                                    },  
                                     
                                        "English UK":{
                                                        "English (United Kingdom)":{
                                                                                    "label" : {
                                                                                                    "Set_Parameter" : "Set parameters",
                                                                                                    "Product_Name" : "Product Name:",
                                                                                                    "Code_Number" : "Code Number : ", 
                                                                                                    "Software_version" : "Software version:",
                                                                                                    "Project_Name" : "Project Name:",
                                                                                                    "Copy_To_Controller_text" : "COPY TO CONTROLLER",
                                                                                                },                                          
                                                                               },                                                                              
                                                      
                                                    },                                                                                                      
                                    },
                            }, 
    
    
     "convert_setting_window" : {"windows":
                                    {

                                     "convert setting window label":"ConvertSettingFile",
                                     "new file name label":"New file name:",
                                     "product label text":"Product name:",
                                     "code number label":"Code no:",
                                     "software version label":"Software version:",
                                     "cancel button text":"CANCEL",
                                     "select the setting file you want to use text":"Select the setting file you want to use",
                                     "X button text":"X",
                                     "X button tooltip text":"Close",
                                     "i button text":"i",
                                     "i button tooltip text":"Info",
                                     "convert file button text":"CONVERT FILE",
                                     "different SW version or file name not to be empty label text":"*Select different Software version or file name can't be empty.",                                                              
                                     },
                          
                          },
                         

    "Product_Information_Window": {
                "label": {"header_value": "Product information"},
                "tooltip": {"close_button": "Close"}
            }, 
                   
    "print_window": {
                     "button" : { "text" : {
                                            "parameter_sheet_button": "Parameter Sheet",
                                            "engineering_sheet_button": "Engineering sheet"
                                             },
                                  },
                     "default_pdf_parameter_sheet_name" : "PrintParameterReport"
                     },
    "view_more": {
                  "header": {
                             "text": {
                                      "view_more" : "View more"                                      
                                      }
                             }
                  },      
    "popup_window" : { 
                      "label" : {
                                  "text": {
                                           "header" : "KoolProg"
                                           }
                                  },

                     "button": {  
                                "text" : {
                                          "X_Button" : "X",
                                          "yes_button" : "YES",
                                          "no_button" : "NO",
                                          "ok_button" : "OK",
                                          "cancel_button" : "CANCEL",
                                          "Cancel_Button" : "Cancel"
                                          },
                                },
                      "Language" :                     
                                   {
                                     "Danish":{ 
                                                "Danish (Denmark)":{
                                                                        "text" : {
                                                                                    "Danish (Denmark)_ok_button" : "OK"
                                                                                    },
                                                                    },
                                              },
                                        
                                     "French" : {
                                                    "French (France)":{
                                                                        "text" : {
                                                                                    "French (France)_ok_button" : "OK"
                                                                                    },
                                                                       },
                                                 },

                                    "German": {
                                                    "German (Germany)":{
                                                                            "text" : {
                                                                                        "German (Germany)_ok_button" : "OK"
                                                                                        },
                                                                        },
                                               },   

                                    "Italian":{
                                                    "Italian (Italy)":{
                                                                            "text" : {
                                                                                        "Italian (Italy)_ok_button" : "OK"
                                                                                        },

                                                                       },
                                               },

                                     "Spanish":{
                                                    "Spanish (Spain, International Sort)":{
                                                                                            "text" : {
                                                                                                        "Spanish (Spain, International Sort)_ok_button" : "Aceptar"                                                                                                
                                                                                                        },
                                                                                           },                                                                                                                        
                                                },

                                    "Chinese":{
                                                    "Chinese (Simplified) Legacy":{
                                                                                        "text" : {
                                                                                                    "Chinese (Simplified) Legacy_ok_button" : "好"
                                                                                                    },
                                                                                   },
                                               },

                                    "Russian":{
                                                "Russian (Russia)":{
                                                                        "text" : {
                                                                                    "Russian (Russia)_ok_button" : "OK"
                                                                                    },
                                                                    },
                                           },                          
                                    "Portuguese":{
                                                  "Portuguese (Brazil)":{
                                                                                "text" : {
                                                                                            "Portuguese (Brazil)_ok_button" : "OK"
                                                                                            },
                                                                         },                                           
                                                  },    
                                    "English UK":{ 
                                                    "English (United Kingdom)": {
                                                                                    "text" : {
                                                                                                "English (United Kingdom)_ok_button" : "OK"
                                                                                                },
                                                                 },
                                                  },
                                    "English US":{ 
                                                    "English (United States)": {
                                                                                    "text" : {
                                                                                                "English (United States)_ok_button" : "OK"
                                                                                                },
                                                                 },
                                                  },
                                 },   
                     "tooltip" : {
                                     "X_Button" : "Close"
                                },    
                        },
                   
    "import_settings_from_controller" : {
                                        "label" : {
                                                   "text" : {
                                                             "window_header_name" : "New Filename",
                                                             "newfile_name_label" : "New file name:",
                                                             "window_description" : "Provide the setting file name you want to use"
                                                             }
                                                   }
                                        },
                   
     "Online_Service_Window":{
                            
                                "languages":
                                            {
                                                "Danish":{
                                                                "Danish (Denmark)":{
                                                                                    "label" : {    
                                                                                                   "Parameter_tab" : "Parametre",
                                                                                                   "Alarms_tab" : "Alarmer",
                                                                                                   "Input/Output_tab" : "Indgang/udgang",                                                                                           
                                                                  
                                                                                                }
                                                                                    },
                                                         },
                                                                    
                                                "French" : {
                                                                "French (France)":{
                                                                                        "label" : {      
        
                                                                                                    "Parameter_tab" : "Paramètres",
                                                                                                    "Alarms_tab" : "Alarmes",
                                                                                                    "Input/Output_tab" : "Entrée/Sortie",                                                                                           
        
                            
                                                                                                  },                                          
                                                                                  },
                                                            },
                            
                                                "German": {
                                                                "German (Germany)":{
                                                                                        "label" : {
                                                                                                        
                                                                                                      "Parameter_tab" : "Parameter",
                                                                                                       "Alarms_tab" : "Alarme",
                                                                                                       "Input/Output_tab" : "Eingang/Ausgang",                                                                                           
                                                                                                                        
                                                                                                  },
                                                                                    },
                                                         },   
                            
                                                "Italian":{
                                                                "Italian (Italy)":{
                                                                                         "label" : {
          
                                                                                                        "Parameter_tab" : "Parametri",
                                                                                                        "Alarms_tab" : "Allarmi",
                                                                                                        "Input/Output_tab" : "Ingresso/uscita",                                                                                           
        
                                                                                                     },
                            
                                                                                    },
                                                    },
                        
                                            "Spanish":{
                                                             "Spanish (Spain, International Sort)":{
                                                                                                       "label" : {
                                                                                                               
                                                                                                                    "Parameter_tab" : "Parámetros",
                                                                                                                    "Alarms_tab" : "Alarmas",
                                                                                                                    "Input/Output_tab" : "Entrada/salida",                                                                                           
    
                                                                                                             },
                                                                                                   },                                                                
                                                                
                                                        },
                        
                                            "Chinese":{
                                                                "Chinese (Simplified) Legacy":{
                                                                                                    "label" : {
    
                                                                                                                    "Parameter_tab" : "参数",
                                                                                                                    "Alarms_tab" : "报警",
                                                                                                                    "Input/Output_tab" : "输入输出",                                                                                           
        
                                                                                                             },                                          
                                                                                             },
                                                        },
                        
                                            "Russian":{
                                                        "Russian (Russia)":{
                                                                                "label" : { 
    
                                                                                                 "Parameter_tab" : "Параметры",
                                                                                                 "Alarms_tab" : "Аварийные сигналы",
                                                                                                 "Input/Output_tab" : "Вход/выход",                                                                                           
                                                                                                                         
                                                                                            },                                          
                                                                            },
                                                        },                 
                                                                   
                                            "Portuguese":{
                                                            "Portuguese (Brazil)":{
                                                                                    "label" : {
                                                                                                      "Parameter_tab" : "Parâmetros",
                                                                                                      "Alarms_tab" : "Alarmes",
                                                                                                      "Input/Output_tab" : "Entrada/Saída",                                                                                           
    
                                                                                                },                                           
                                                                                   },                                                                              
                                                          
                                                        },
                                             
                                             "English UK":{ 
                                                    "        English (United Kingdom)": {
                                                                                           "label" : {
                                                                                                        "Parameter_tab":"Parameters",                                  
                                                                                                        "Alarms_tab":"Alarms",                                
                                                                                                        "Input/Output_tab":"Input/Output", 
                                                                                                    },
                                                                                         },
                                                           },
                                             
                                            "English US":{ 
                                                            "English (United States)": {
                                                                                           "label" : {
                                                                                                        "Parameter_tab":"Parameters",                                  
                                                                                                        "Alarms_tab":"Alarms",                                
                                                                                                        "Input/Output_tab":"Input/Output",  
                                                                                                    },
                                                                         },
                                                          },                                                                            
                                    },
                              
                            "Tabs":  {
                              
                                        "Parameters_Tab_Label_Text":"Parameters",
                                   
                                        "Alarms_Tab_Label_Text":"Alarms",
                                   
                                        "Input/Output_Label_Text":"Input/Output"                                   
                                     },
                             
                             "Please_Connect_A_controller_Label_text": "Please connect a controller!",
                             
                             "Main_switch_label_text" : "Main switch:",
                             
                             "Manual_label_text" : "Manual",
                             
                             "Start_label_text"  : "Start" ,
                             
                             "Stop_label_text" : "Stop",
                             
                             "Input_output_table_text" : {
                                                          
                                                 "Manual_Header_text" : "Manual"
                                                          
                                                          },
                             
                             "chartWindow": {
                                             
                                             "chart_format_initial_word" : "Chart",
                                             
                                             "Chart_datagrid_headers_list" : ["Log parameter","Menu Code","Color","Min","Max","Value"] ,
                                             
                                             "Log_Period_default": "Manual",
                                             
                                             "Log_Interval_default" : "1 Sec interval",
                                             
                                             "Label_default" : "Label in Sec",
                                             
                                             "Zoom_Level_default" : "1 Min view",
                                             
                                             "Label_list_items" : ["Label in Sec","Label in Min","Label in Hour"],
                                             
                                             "Log_Period_List_Items": ["Manual","30 Min","1 Hr","3 Hr","6 Hr","12 Hr","24 Hr","48 Hr","72 Hr"],
                                             
                                             "Zoom_Level_list_items" : ["1 Min view","15 Min view","30 Min view","1 Hr view","6 Hr view","12 Hr view","24 Hr view"],
                                             
                                             "Log_Interval_list_items" : ["1 Sec interval","2 Sec interval","3 Sec interval","4 Sec interval","5 Sec interval",
                                                                          "6 Sec interval","7 Sec interval","8 Sec interval","9 Sec interval","10 Sec interval",
                                                                          "11 Sec interval","12 Sec interval","13 Sec interval","14 Sec interval","15 Sec interval",
                                                                          "16 Sec interval","17 Sec interval","18 Sec interval","19 Sec interval","20 Sec interval",
                                                                          "21 Sec interval","22 Sec interval","23 Sec interval","24 Sec interval","25 Sec interval",
                                                                          "26 Sec interval","27 Sec interval","28 Sec interval","29 Sec interval","30 Sec interval",
                                                                          "31 Sec interval","32 Sec interval","33 Sec interval","34 Sec interval","35 Sec interval",
                                                                          "36 Sec interval","37 Sec interval","38 Sec interval","39 Sec interval","40 Sec interval",
                                                                          "41 Sec interval","42 Sec interval","43 Sec interval","44 Sec interval","45 Sec interval",
                                                                          "46 Sec interval","47 Sec interval","48 Sec interval","49 Sec interval","50 Sec interval",
                                                                          "51 Sec interval","52 Sec interval","53 Sec interval","54 Sec interval","55 Sec interval",
                                                                          "56 Sec interval","57 Sec interval","58 Sec interval","59 Sec interval","60 Sec interval"],
                                             
                                             
                                            
                                            "SaveAs_dialog": {
                                                              
                                                              "default_FileType_Text" : "CSV File (*.csv) ",
                                                              "Filetypes_available": ["PNG File (*.png) ", "CSV File (*.csv) "],
                                                              "default_FileType" : ".csv",
                    
                                                              "extension" : {"CSV_extension": ".csv",
                                                                             "PNG_extension": ".png" } 
                                                              
                                                              }
                                            
                                            }
                             
                             },
    "Copy_to_controller_window":{
                                 "label":{
                                          "text":{
                                                  "set_as_fav" : "SET AS FAVOURITE",
                                                  "countup"    : "CountUp Timer(0-,,,)",
                                                  "countdown"  : "Countdown Timer(,,,-0)",
                                                   "Non_compliant_controller" : "Not compliant controller",
                                                  }

                                          },
                                 "Progress_bar" : {
                                              
                                        "firmware_update_failed_color" : [255,0,0] 
                                              },
                            
    },
    "firmware_password_window" : { 
                      "label" : {
                                  "text": {
                                           "header" : "Password",
                                           "firmware_updated_is_password_protected_label" :"Firmware update is password protected.",
                                           "please_enter_the_koolprog_password_label" : "Please enter the KoolProg password",
                                           "password_label" : "Password",
                                           "password_is_case_sensitive_label" : "Password is case sensitive"
                                           }
                                  },

                     "button": {  
                                "text" : {
                                          "X_Button" : "X",
                                          "ok_button" : "OK",
                                          "Cancel_Button" : "Cancel"
                                          },
                                },
                     "tooltip" : {
                                     "X_Button" : "Close"
                                },    
                        },
    "Quick_Settings_Window" : {
                            "quick_wizard_tooltip" : {'Danish (Denmark)':"Indtast værdien mellem {} to {}",'English (United States)':"Please Enter the value between {} to {}","French (France)":"Veuillez saisir la valeur entre {} to {}","Spanish (Spain, International Sort)":"Introduzca un valor entre {} to {}","German (Germany)":"Bitte geben Sie einen Wert ein zwischen {} to {}","Portuguese (Brazil)":"Insira o valor entre {} to {}","Russian (Russia)":"Введите значение в диапазоне от {} to {}","Italian (Italy)":"Immettere un valore compreso tra {} to {}"},
                            "label" : {
                                       "text" : {
                                                 "header_label_quick_setup" : "Quick setup",
                                                 "header_label_new_project" : "New project",
                                                 "Quick_setting_parameters_label" : "Quick Setting Parameters", 
                                                 }
                                       },
                                       
                            "button" : {
                                        "text" :  {
                                                   "Close_Button" : "X",
                                                   "Finish_Button" : "FINISH",
                                                   }

                                      },
                               "Language":{
                                        "Danish (Denmark)":{
                                                "label" : {
                                                       "text" : {
                                                                 "header_label_new_prj_window" : "Nyt projekt",
                                                                 "header_label_prj_window" : "Kvik opsætning",
                                                                 "Quick_setting_parameters_label" : "Hurtig opsætning af parametre", 
                                                                 }
                                                       },
                                       
                                                "button" : {
                                                            "text" :  {
                                                                       "Finish_Button" : "AFSLUT",
                                                                       }
                    
                                                          },
                                        },
                                        "French (France)":{
                                                "label" : {
                                                       "text" : {
                                                                 "header_label_new_prj_window" : "Nouveau projet",
                                                                 "header_label_prj_window" : "Configuration rapide",
                                                                 "Quick_setting_parameters_label" : "Paramètres de configuration rapide", 
                                                                 }
                                                       },
                                       
                                                "button" : {
                                                            "text" :  {
                                                                       "Finish_Button" : "TERMINER",
                                                                       }
                    
                                                          },
                                        },
                                        "Spanish (Spain, International Sort)":{
                                                "label" : {
                                                       "text" : {
                                                                 "header_label_new_prj_window" : "Nuevo proyecto",
                                                                 "header_label_prj_window" : "Configuración rápida",
                                                                 "Quick_setting_parameters_label" : "Parámetros de ajuste rápido", 
                                                                 }
                                                       },
                                       
                                                "button" : {
                                                            "text" :  {
                                                                       "Finish_Button" : "FINALIZAR",
                                                                       }
                    
                                                          },
                                        },
                                        "German (Germany)":{
                                                "label" : {
                                                       "text" : {
                                                                 "header_label_new_prj_window" : "Neues Projekt",
                                                                 "header_label_prj_window" : "Schnellkonfiguration",
                                                                 "Quick_setting_parameters_label" : "Schnelleinstellung der Parameter", 
                                                                 }
                                                       },
                                       
                                                "button" : {
                                                            "text" :  {
                                                                       "Finish_Button" : "FERTIGSTELLEN",
                                                                       }
                    
                                                          },
                                        },
                                        "Portuguese (Brazil)":{
                                                "label" : {
                                                       "text" : {
                                                                 "header_label_new_prj_window" : "Novo projeto",
                                                                 "header_label_prj_window" : "Setup rápido",
                                                                 "Quick_setting_parameters_label" : "Parâmetros de configuração rápida", 
                                                                 }
                                                       },
                                       
                                                "button" : {
                                                            "text" :  {
                                                                       "Finish_Button" : "CONCLUIR",
                                                                       }
                    
                                                          },
                                        },
                                        "Russian (Russia)":{
                                                "label" : {
                                                       "text" : {
                                                                 "header_label_new_prj_window" : "Новый проект",
                                                                 "header_label_prj_window" : "Быстрая настройка",
                                                                 "Quick_setting_parameters_label" : "Параметры быстрой настройки", 
                                                                 }
                                                       },
                                       
                                                "button" : {
                                                            "text" :  {
                                                                       "Finish_Button" : "ГОТОВО",
                                                                       }
                    
                                                          },
                                        },
                                        "Chinese (Simplified) Legacy":{
                                                "label" : {
                                                       "text" : {
                                                                 "header_label_new_prj_window" : "新建项目",
                                                                 "header_label_prj_window" : "快速设置",
                                                                 "Quick_setting_parameters_label" : "快速设置参数", 
                                                                 }
                                                       },
                                       
                                                "button" : {
                                                            "text" :  {
                                                                       "Finish_Button" : "完成",
                                                                       }
                    
                                                          },
                                        },
                                        "Italian (Italy)":{
                                                "label" : {
                                                       "text" : {
                                                                 "header_label_new_prj_window" : "Nuovo progetto",
                                                                 "header_label_prj_window" : "Setup rapido",
                                                                 "Quick_setting_parameters_label" : "Parametri di impostazione rapida", 
                                                                 }
                                                       },
                                       
                                                "button" : {
                                                            "text" :  {
                                                                       "Finish_Button" : "FINITO",
                                                                       }
                    
                                                          },
                                        },
                                        "English (United Kingdom)":{
                                                "label" : {
                                                       "text" : {
                                                                 "header_label_new_prj_window" : "New project",
                                                                 "header_label_prj_window" : "Quick setup",
                                                                 "Quick_setting_parameters_label" : "Quick Setting Parameters", 
                                                                 }
                                                       },
                                       
                                                "button" : {
                                                            "text" :  {
                                                                       "Finish_Button" : "FINISH",
                                                                       }
                    
                                                          },
                                        },
                                        "English (United States)":{
                                                "label" : {
                                                       "text" : {
                                                                 "header_label_new_prj_window" : "New project",
                                                                 "header_label_prj_window" : "Quick setup",
                                                                 "Quick_setting_parameters_label" : "Quick Setting Parameters", 
                                                                 }
                                                       },
                                       
                                                "button" : {
                                                            "text" :  {
                                                                       "Finish_Button" : "FINISH",
                                                                       }
                    
                                                          },
                                        },
                                           
                                    },
    },
    "tree_view_headers" :{
                     "languages":
                                {
                                 "Danish (Denmark)":
                                     
                                            {
                                                 "label" : {
                                                       "text" : {
                                                                 "All" : "Alle",
                                                                 "Favourites" : "Favoritter", 
                                                                 "Main menu" : "Main menu",
                                                                 }
                                                       },
                                           },
                                 "French (France)":{
                                                    "label" : {
                                                       "text" : {
                                                                 "All" : "Tous",
                                                                 "Favourites" : "Favoris", 
                                                                 "Main menu" : "Menu principal",
                                                                 }
                                                               },
                                           
                                                },
                                 "German (Germany)":{
                                                               "label" : {
                                                                   "text" : {
                                                                             "All" : "Alle",
                                                                             "Favourites" : "Favoriten", 
                                                                             "Main menu" : "Hauptmenü",
                                                                               }
                                                                   },
                                                            
                                           },
                                 "Italian (Italy)":{
                                                             "label" : {
                                                               "text" : {
                                                                        "All" : "Tutti",
                                                                         "Favourites" : "Preferiti", 
                                                                         "Main menu" : "Menu principale",
                                                                         }
                                                               },
                                                               
                                                        
                                           },
                                 "Spanish (Spain, International Sort)":{
                                                                        "label" : {
                                                                           "text" : {
                                                                                     "All" : "Alle",
                                                                                     "Favourites" : "Favoritter", 
                                                                                     "Main menu" : "Main menu",
                                                                                     }
                                                                           },
                                                                           
                                                                    
                                                },
                                 "Russian (Russia)":{
                                                                        "label" : {
                                                                           "text" : {
                                                                                     "All" : "Все",
                                                                                     "Favourites" : "Избранное", 
                                                                                     "Main menu" : "Главное меню",
                                                                                    }
                                                                           },
                                                                           
                                                                    
                                                },
                                          "Chinese (Simplified) Legacy":{
                                                                            "label" : {
                                           "text" : {
                                                     "All" : "所有",
                                                     "Favourites" : "常用", 
                                                     "Main menu" : "播放菜单",
                                                     }
                                           },
                                           
                                                },
                                           "Portuguese (Brazil)":{
                                                                        "label" : {
                                           "text" : {
                                                     "All" : "Todos",
                                                     "Favourites" : "Favoritos", 
                                                     "Main menu" : "Menu principal",
                                                     }
                                           },
                                           
                                    },
                                               
                                                "English (United States)":{
                                                                              "label" : {
                                                                                   "text" : {
                                                                                            "All" : "All",
                                                                                             "Favourites" : "Favourites", 
                                                                                             "Main menu" : "Main menu",
                                                                                             },
                                                                                        },
                                                                              },
                                                  "English (United Kingdom)":{
                                                                              "label" : {
                                                                                   "text" : {
                                                                                            "All" : "All",
                                                                                             "Favourites" : "Favourites", 
                                                                                             "Main menu" : "Main menu",
                                                                                             }
                                                                                        },
                                                                              },
                                 },
                                },
    "dataGrid" :{
                     "languages":
                                {
                                 "Danish (Denmark)":
                                     
                                            {
                                                 "label" : {
                                                       "text" : {
                                                                 "Label" : "Mærkat",
                                                                 "Description" : "Beskrivelse", 
                                                                 "Min" : "Min.",
                                                                 "Default":"Standard",
                                                                 "Value":"Værdi",
                                                                 "Max":"Maks.",
                                                                 }
                                                       },
                                           },
                                 "French (France)":{
                                                    "label" : {
                                                       "text" : {
                                                                 "Label" : "Nom",
                                                                 "Description" : "Description", 
                                                                 "Min" : "Min..",
                                                                 "Default":"Par défaut",
                                                                 "Value":"Valeur",
                                                                 "Max":"Max..",
                                                                 }
                                                               },
                                           
                                                },
                                 "German (Germany)":{
                                                               "label" : {
                                                                   "text" : {
                                                                            "Label" : "Kennzeichnung",
                                                                 "Description" : "Beschreibung", 
                                                                 "Min" : "Min.",
                                                                 "Default":"Standard",
                                                                 "Value":"Wert",
                                                                 "Max":"Max.",
                                                                               }
                                                                   },
                                                            
                                           },
                                 "Italian (Italy)":{
                                                             "label" : {
                                                               "text" : {
                                                                        "Label" : "Etichetta",
                                                                 "Description" : "Descrizione", 
                                                                 "Min" : "Min.",
                                                                 "Default":"Predefinito",
                                                                 "Value":"Valore",
                                                                 "Max":"Max",
                                                                         }
                                                               },
                                                               
                                                        
                                           },
                                 "Spanish (Spain, International Sort)":{
                                                                        "label" : {
                                                                           "text" : {
                                                                                     "Label" : "Etiqueta",
                                                                 "Description" : "Descripción", 
                                                                 "Min" : "Mín.",
                                                                 "Default":"Predeterminado",
                                                                 "Value":"Valor",
                                                                 "Max":"Máx.",
                                                                                     }
                                                                           },
                                                                           
                                                                    
                                                },
                                 "Russian (Russia)":{
                                                                        "label" : {
                                                                           "text" : {
                                                                                    "Label" : "Маркировка",
                                                                 "Description" : "Описание", 
                                                                 "Min" : "Мин.",
                                                                 "Default":"По умолчанию",
                                                                 "Value":"Значение",
                                                                 "Max":"Макс.",
                                                                                    }
                                                                           },
                                                                           
                                                                    
                                                },
                                          "Chinese (Simplified) Legacy":{
                                                                            "label" : {
                                           "text" : {
                                                   "Label" : "命名",
                                                                 "Description" : "描述", 
                                                                 "Min" : "最小",
                                                                 "Default":"默认",
                                                                 "Value":"值",
                                                                 "Max":"最大",
                                                     }
                                           },
                                           
                                                },
                                           "Portuguese (Brazil)":{
                                                                        "label" : {
                                           "text" : {
                                                    "Label" : "Etiqueta",
                                                                 "Description" : "Descrição", 
                                                                 "Min" : "Mín.",
                                                                 "Default":"Padrão",
                                                                 "Value":"Valor",
                                                                 "Max":"Máx.",
                                                     }
                                           },
                                           
                                    },
                                               
                                                "English (United States)":{
                                                                              "label" : {
                                                                                   "text" : {
                                                                                            "Label" : "Label",
                                                                                             "Description" : "Description", 
                                                                                             "Min" : "Min",
                                                                                             "Default":"Default",
                                                                                             "Value":"Value",
                                                                                             "Max":"Max",
                                                                                             },
                                                                                        },
                                                                              },
                                                  "English (United Kingdom)":{
                                                                              "label" : {
                                                                                   "text" : {
                                                                                            "Label" : "Label",
                                                                                             "Description" : "Description", 
                                                                                             "Min" : "Min",
                                                                                             "Default":"Default",
                                                                                             "Value":"Value",
                                                                                             "Max":"Max",
                                                                                             }
                                                                                        },
                                                                              },
                                 },
                                },
    
    
}

controller_family_with_wizard = ["AK-CC55", "EKE1x"]


controller_family_with_file_extension= {"AK-CC55": ".cbk",
                                           "ERC11x" : ".xml",
                                           "ERC21x" : ".xml",
                                           "EET" : ".xml",
                                           "EKE1x" : ".xml",
                                           "ETC1Hx" : ".xml",
                                           }

default_product_details_info = {
    "ETC1Hx": {
        "controllerApplication": "STANDARD",
        "power": "120Vac 60Hz",
        "spindle": "Panel without spindle",
    },

    "EET": {
        "EETc 11": {"controllerCodeNo": "080N0012-EET Compact 1 Relay 120V", "softwareVersion": "1.21",
                    "controllerPV": "PV01"},
        "EETc 21": {"controllerCodeNo": "080N0013-EET Compact 2 Relay 120V", "softwareVersion": "1.21",
                    "controllerPV": "PV01"},
        "EETc 12": {"controllerCodeNo": "080N0010-EET Compact 1 Relay 230V", "softwareVersion": "1.21",
                    "controllerPV": "PV01"},
        "EETc 22": {"controllerCodeNo": "080N0011-EET Compact 2 Relay 230V", "softwareVersion": "1.21",
                    "controllerPV": "PV01"},

        "EETc 2W": {"controllerCodeNo": "080N0014-EET Advanced 2 Relay wide range", "softwareVersion": "1.38",
                    "controllerPV": "PV01"},
        "EETa 3W": {"controllerCodeNo": "080N0015-EET Advanced 3 Relay wide range", "softwareVersion": "1.38",
                    "controllerPV": "PV01"}
    },
    "ERC11x": {
        "ERC111A": {"controllerCodeNo": "080G3237-Standard(Blue LED without Buzzer)", "controllerPV": "PV01"},
        "ERC111C": {"controllerCodeNo": "080G3239-GDM(Red LED with Buzzer)", "controllerPV": "PV01"},
        "ERC112D": {"controllerCodeNo": "080G3415-GDM(Blue LED without Buzzer)", "controllerPV": "PV01"},
        "ERC112D VSC": {"controllerCodeNo": "080G3414-CFF(Blue LED with Buzzer)", "controllerPV": "PV02"},
        "ERC113C": {"controllerCodeNo": "080G3254-GDM(No LED No Buzzer)", "controllerPV": "PV02"},
    },
    "ERC21x": {
        "ERC211": {"controllerCodeNo": "080G3290-(Red LED,115V,Single/Multi Pack)", "controllerApplication": "App0"},
        "ERC213": {"controllerCodeNo": "080G3268-(Red LED,115V,Single/Multi Pack)", "controllerApplication": "App0"},
        "ERC214": {"controllerCodeNo": "080G3292-(Red LED,115V,Single/Multi Pack)", "controllerApplication": "App0"},
    },
    "EKE1x": {
        "EKE 1A": {"controllerCodeNo": "080G5300", "controllerPV": "PV03"},
        "EKE 1B": {"controllerCodeNo": "080G5350", "controllerPV": "PV03"},
        "EKE 1C": {"controllerCodeNo": "080G5400", "controllerPV": "PV03"}

    },
    "AK-CC55": {
        "AK-CC55 Compact": {"controllerCodeNo": "084B4081-AK-CC55 Compact", "softwareVersion": "1.90"},
        "AK-CC55 Single Coil": {"controllerCodeNo": "084B4082-AK-CC55 Single Coil", "softwareVersion": "1.32"},
        "AK-CC55 Multi Coil": {"controllerCodeNo": "084B4084-AK-CC55 Multi Coil", "softwareVersion": "1.72"},
    }
}


ETC1Hx_product_app_list = \
    {
        "ETC1Hx": {
            "controllerApplication": ["STANDARD", "DUALDEFROST", "COND101", "MEDICINECOOLER", "GDM101", "FG_GDM",
                                      "DFNOFROST100", "STANDARD", "DUALBAND102", "DUALDEFROST", "COND101",
                                      "MEDICINECOOLER", "DFNOFROST100", "FG_GDM", "STANDARD", "GDM101", "FG_GDM",
                                      "DUALBAND102", "COND101", "WINECOOLER", "DUALDEFROST", "MEDICINECOOLER",
                                      "DOUBLEDOOR", "WESTERN", "DFNOFROST100"],
            "power": ["120Vac 60Hz", "230Vac 50/60Hz"],
            "spindle": ["Panel without spindle", "Panel + spindle without stop function",
                        "Panel + spindle with stop function"],
            "partnum": "000000",
        }
    }

special_characters = ['&', '*', '|', ';', ':', '<', '>', '/', '""', '?', ',',"\\"]
windows_special_characters = [':','*','<','>','?','/',"'","\\",'|','""']
special_characters_for_file_name = ['~','!','@','#','$','%','^','&','(',')','+','{','}',';', ',','']
KoolProg_supported_special_char = ['`','~', '!', '@', '#', '$', '%', '^', '(', ')', '-', '_', '{', '}', '[', ']']
Window_supported_special_char = ['`','~', '!', '@', '#', '$', '%', '^', '(', ')', '-', '_', '{', '}', '[', ']', '&', ';','""', ',',]

#############  POP-UP MESSAGE INFORMATION #################################################################


################################ SET PARAMTER NEW PROJECT WINDOW PROJECT DETAILS LABEL #############
product_details_label_text_verification = {

    "ETC1Hx": {"controllerVariant": "Product Name:",
               "controllerApplication": "Application:",
               "powerSupply": "Power supply:",
               "controllerCodeNo": "Code Number : "
               },
    "EET": {"controllerVariant": "Product Name:",
            "controllerCodeNo": "Code Number : ",
            "softwareVersion": "SW Version:",
            "controllerPV": "Product Version:"
            },
    "ERC11x": {"controllerVariant": "Product Name:",
               "controllerCodeNo": "Code Number : ",
               "softwareVersion": "SW Version:",
               "controllerPV": "Product Version:"
               },
    "ERC21x": {"controllerVariant": "Product Name:",
               "controllerApplication": "Application:",
               "controllerCodeNo": "Code Number : "
               },
    "EKE1x": {"controllerVariant": "Product Name:",
              "controllerCodeNo": "Code Number : ",
              "controllerPV": "ProductVersion:"
              },
    "AK-CC55": {"controllerVariant": "Product Name:",
                "controllerCodeNo": "Code Number : ",
                "softwareVersion": "Software version:"
                }
}
copy_to_controller_product_details_label_text_verification = {

    "ETC1": {"controllerVariant": "Product Name:",
               "controllerApplication": "Application:",
               "powerSupply": "Power supply:",
               "description": "Description:"
               },
    "EETc": {"controllerVariant": "Product Name:",
            "controllerCodeNo": "Code Number : ",
            "DatabaseVersion": "DatabaseVersion: ",
            "softwareVersion": "SW Version:"
            
            },
    "ERC1": {"controllerVariant": "Product Name:",
               "controllerCodeNo": "Code Number : ",
               "DatabaseVersion": "DatabaseVersion: ",
               "softwareVersion": "SW Version:"
               },
    "ERC2": {"controllerVariant": "Product Name:",
               "controllerApplication": "Application:",
               "controllerCodeNo": "Code Number : ",
               "description": "Description:"
               },
    "EKE1": {"controllerVariant": "Product Name:",
              "controllerCodeNo": "Code Number : ",
              "controllerPV": "ProductVersion:",
              "description": "Description:"
              },
    "AK-C": {"controllerVariant": "Product Name:",
                "controllerCodeNo": "Code Number : ",
                "softwareVersion": "Software version:",
                }
}

default_project_window_tree_expanders = {"ETC1Hx": ["All"],
                                         "EET": ["All"],
                                         "ERC11x": ["All"],
                                         "ERC21x": ["All"],
                                         "EKE1x": ["All"],
                                         "AK-CC55": ["All","Main menu"]
                                         }

###################### CONTROLLER FAMILY fNAME WITH EXTRA PROJECT DETAILS###########################
controller_family_extra_prj_details = ['ETC1Hx']
###################### CONTROLLER FAMILY  NAME WITH EXTRA PROJECT DETAILS###########################

property_value_for_headers_in_dataGrid = {
                                          "Favourites" : "Favourites",
                                          "Label" : "MenuCode",
                                          "Description" : "ParameterName",
                                          "Min" : "Minvalue",
                                          "Default" : "DefaultValue;DefaultUnit" ,
                                          "Value" : "Value;Unit",
                                          "Max" : "Maxvalue"
                                          }

enumValue_for_binary_values_for_value_column_in_dataGrid = {
                                                            
                                                            '11' :  'RW',
                                                            '01' : 'RO',
                                                            '10' : 'WO',
                                                            '00' : '--'
                                                            
                                                            
                                                            }

RGB_for_circle_color_in_dataGrid_after_value_change = [169,169,169]
RGB_for_circle_color_in_dataGrid_after_value_Not_Grey = [169,169,169]
RGB_for_background_color_in_dataGrid_after_value_change= [251,216,202]
RGB_for_background_color_in_dataGrid_after_value_save = [255,255,255]

######################KOOLPROG BUTTON,LABEL,HEADER TEXT VALIDATION#######################################
Text_validation_in_windows={"windows":{
                                       "set_parameter_window":{
                                        "set parameter header text":"Set parameter",
                                        "open recent setting file header text":"Open a recent setting file",
                                        "setting file header text":"Setting files",
                                        "New label text":"New",
                                        "import setting controller label text":"Import settings from controller",
                                        "open label text":"Open",
                                        "controller model header text":"Controller Model",
                                        "import controller model label text":"Import controller model"                  
                                                                },

                            "Language":{
                                        "Danish (Denmark)": {
                                                 "set_parameter_window":{
                                        "set parameter header text":"Indstil parametre",
                                        "open recent setting file header text":"Open a recent setting file",
                                        "setting file header text":"Setting files",
                                        "New label text":"Nyt",
                                        "import setting controller label text":"Import settings from controller",
                                        "open label text":"Åben",
                                        "controller model header text":"Regulatormodel",
                                        "import controller model label text":"Importér regulatortype"                  
                                                                },
                                                 },
                                        "French (France)": {
                                                           "set_parameter_window":{
                                        "set parameter header text":"Définir le paramètre",
                                        "open recent setting file header text":"Ouvrez un fichier de paramètres récent",
                                        "setting file header text":"Définition des fichiers",
                                        "New label text":"Nouveau",
                                        "import setting controller label text":"Importer les paramètres du contrôleur",
                                        "open label text":"Ouvrir",
                                        "controller model header text":"Modèle du régulateur",
                                        "import controller model label text":"Importer le modèle du régulateur"                  
                                                                },
                                                           },
                                        "Spanish (Spain, International Sort)": {
                                                           "set_parameter_window":{
                                        "set parameter header text":"Establecer parámetro",
                                        "open recent setting file header text":"Abrir un archivo de configuración reciente",
                                        "setting file header text":"Configurando archivos",
                                        "New label text":"Nuevo",
                                        "import setting controller label text":"Importar configuraciones desde el controlador",
                                        "open label text":"Abierto",
                                        "controller model header text":"Modelo del controlador",
                                        "import controller model label text":"Importar modelo de controlador"                  
                                                                },
                                                           },
                                       "German (Germany)": {
                                                           "set_parameter_window":{
                                        "set parameter header text":"Parameter einstellen",
                                        "open recent setting file header text":"Öffnen Sie eine aktuelle Einstellungsdatei",
                                        "setting file header text":"Dateien einstellen",
                                        "New label text":"Neu",
                                        "import setting controller label text":"Importieren Sie die Einstellungen vom Controller",
                                        "open label text":"Geöffnet",
                                        "controller model header text":"Reglermodell",
                                        "import controller model label text":"Reglermodell importieren"                  
                                                                },
                                                           },
                                        "Portuguese (Brazil)":{
                                                           "set_parameter_window":{
                                        "set parameter header text":"Definir parâmetro",
                                        "open recent setting file header text":"Abra um arquivo de configuração recente",
                                        "setting file header text":"Arquivos de configuração",
                                        "New label text":"Novo",
                                        "import setting controller label text":"Importar configurações do controlador",
                                        "open label text":"Abrir",
                                        "controller model header text":"Modelo do controlador",
                                        "import controller model label text":"Importar modelo do controlador"                  
                                                                },
                                                           },
                                        "Russian (Russia)":{
                                                           "set_parameter_window":{
                                        "set parameter header text":"Задать параметр",
                                        "open recent setting file header text":"Откройте недавний файл настроек",
                                        "setting file header text":"Настройка файлов",
                                        "New label text":"Новый",
                                        "import setting controller label text":"Импорт настроек из контроллера",
                                        "open label text":"Открыть",
                                        "controller model header text":"Модель контроллера",
                                        "import controller model label text":"Импорт модели контроллера"                  
                                                                },
                                                           },
                                        "Chinese (Simplified) Legacy":{
                                                           "set_parameter_window":{
                                        "set parameter header text":"设置参数",
                                        "open recent setting file header text":"打开最近的设置文件",
                                        "setting file header text":"设置文件",
                                        "New label text":"新建",
                                        "import setting controller label text":"从控制器导入设置",
                                        "open label text":"打开",
                                        "controller model header text":"控制器模块",
                                        "import controller model label text":"导入控制器型号"                  
                                                                },
                                                           },
                                       "Italian (Italy)":{
                                                           "set_parameter_window":{
                                        "set parameter header text":"Imposta parametro",
                                        "open recent setting file header text":"Apri un file di impostazione recente",
                                        "setting file header text":"Impostazione dei file",
                                        "New label text":"Nuovo Catalogo",
                                        "import setting controller label text":"Importa le impostazioni dal controller",
                                        "open label text":"Aperta",
                                        "controller model header text":"Modello regolatore",
                                        "import controller model label text":"Importare il modello di regolatore"                  
                                                                },
                                                           },
                                        "English (United Kingdom)":{
                                                    "set_parameter_window":{
                                        "set parameter header text":"Set parameter",
                                        "open recent setting file header text":"Open a recent setting file",
                                        "setting file header text":"Setting files",
                                        "New label text":"New",
                                        "import setting controller label text":"Import settings from controller",
                                        "open label text":"Open",
                                        "controller model header text":"Controller Model",
                                        "import controller model label text":"Import controller model"     
                                                           },
                                                    },
                                        "English (United States)":{
                                                           "set_parameter_window":{
                                        "set parameter header text":"Set parameter",
                                        "open recent setting file header text":"Open a recent setting file",
                                        "setting file header text":"Setting files",
                                        "New label text":"New",
                                        "import setting controller label text":"Import settings from controller",
                                        "open label text":"Open",
                                        "controller model header text":"Controller Model",
                                        "import controller model label text":"Import controller model"     
                                                           },
                                                },
                                    },
                                 },
                            }
######################KOOLPROG BUTTON,LABEL,HEADER TEXT VALIDATION#######################################

default_project_filter_text = "XML File (*.xml)"
default_chart_filter_text = "CSV File"

#KoolProg_Extra_Supported_Language = ["Danish (Denmark)", "Chinese (Simplified) Legacy"]
koolprog_supported_extensions = {"Copy_to_controller_open_window": ["XML File (*.xml)","CBK File (*.cbk)"],
                                 "default_chart_filter_text" : "CSV File"
                                }

############# AKCC Label For Language ###########

AKCC_Supported_language = ['Danish (Denmark)', 'English (United Kingdom)', 'French (France)', 'German (Germany)', 'Italian (Italy)', 'Portuguese (Brazil)', 'Russian (Russia)', 'Spanish (Spain, International Sort)']

############# AKCC Label For Language ###########


############# View More ###########

view_more_unsupported_controller_family = ["AK-CC55"]
############# View More ###########

##################### Controller Family ############

GetFamily={"ETC1":"ETC1Hx",
        "EETc":"EET",
        "ERC1":"ERC11x",
        "ERC2":"ERC21x",
        "EKE ":"EKE1x",
        "AK-C":"AK-CC55"
         }

##################### Controller Family ############
controllerfamily_with_saved_extension= ["AK-CC55"]

####################### COPY TO CONTROLLER #################################
Min_Count=0
Max_Count=999
Ready_Mode_Controller_Family = ["ERC11x"]




######################################  Performance Test #####################################

PERFORMANCE_TESTING = {"TIME_TAKEN_FOR_PROJECT_CREATION_OFFLINE" : 20,
                       "TIME_TAKEN_FOR_OPENING_CHART_PROJECT_IN_ONLINE_SERVICE_WINDOW_ONLINE": 6,
                       "TIME_TAKEN_FOR_OPENING_PARAMETER_SHEET_ONLINE": 10,
                       "TIME_TAKEN_FOR_OPENING_PROJECT_IN_COPY_TO_CONTROLLER_WINDOW_ONLINE": 6,
                       "TIME_TAKEN_FOR_OPENING_PROJECT_IN_IMPORT_SETTINGS_FROM_CONTROLLER_WINDOW_ONLINE": 10,
                       "TIME_TAKEN_FOR_WRITING_AND_VERIFIYING_PROJECT_DESCRIPTION_LENGTH_OFFLINE" : 4,
                       "TIME_TAKEN_FOR_SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW_OFFLINE" : 8, 
                       "TIME_TAKEN_FOR_SWITCHING_TO_HOME_WINDOW_FROM_PROJECT_WINDOW_ONLINE" : 4,
                       "TIME_TAKEN_FOR_SWITCHING_TO_HOME_WINDOW_FROM_ONLINE_SERVICE_WINDOW_ONLINE" : 4,
                       "TIME_TAKEN_FOR_SAVING_THE_PROJECT_USING_FILE_COPY_OFFLINE" : 4,
                        "TIME_TAKEN_FOR_SAVING_THE_PROJECT_USING_FILE_COPY_ONLINE" : 4,
                       "TIME_TAKEN_FOR_EXPORTING_SETTING_TO_CONTROLLER_ONLINE" : 10,
                        "TIME_TAKEN_FOR_PROJECT_CREATION_ONLINE" : 40,
                        "TIME_TAKEN_FOR_RECENT_PROJECT_OPEN_ONLINE": 10,
                        "TIME_TAKEN_FOR_RECENT_PROJECT_OPEN_OFFLINE": 10,
                        "TIME_TAKEN_FOR_IMPORT_CONTROLLER_MODEL_FROM_SETPARAMETER_WINDOW_OFFLINE": 27,
                        "TIME_TAKEN_FOR_IMPORT_CONTROLLER_MODEL_FROM_PROJECT_WINDOW_ONLINE": 90, 
                        "TIME_TAKEN_FOR_PROGRAMMING_CONTROLLER_IN_COPY_TO_CONTROLLER_ONLINE" : 300,
                        "TIME_TAKEN_FOR_OPENING_PROJECT_FROM_SETPARAMETER_OFFLINE" : 10,
                        "TIME_TAKEN_FOR_OPENING_PROJECT_FROM_SETPARAMETER_ONLINE" :10,
                       "TIME_TAKEN_FOR_OPENING_PROJECT_IN_PROJECT_WINDOW_ONLINE" : 10,
                        "TIME_TAKEN_FOR_OPENING_PROJECT_IN_PROJECT_WINDOW_OFFLINE": 6,
                        "TIME_TAKEN_FOR_CONVERT_SETTINGS_IN_PROJECT_WINDOW_OFFLINE":38,
                        "TIME_TAKEN_FOR_CONVERT_SETTINGS_IN_PROJECT_WINDOW_ONLINE":38,
                        #"TIME_TAKEN_FOR_SAVEAS_OFFLINE" : 6,
                        #"TIME_TAKEN_FOR_SAVEAS_ONLINE" : 6,
                        "TIME_TAKEN_FOR_SWITCHING_TO_ONLINE_SERVICE_WINDOW_ONLINE" : 30,
                        "TIME_TAKEN_FOR_SWITCHING_TO_OFFLINE_SERVICE_WINDOW_OFFLINE" : 17,
                        "TIME_TAKEN_FOR_FACTORY_RESET_IN_PROJECT_ONLINE" : 20,
                        #"TIME_TAKEN_FOR_ONLINE_SERVICE_WINDOW_SAVEAS_ONLINE" : 20,
                        "TIME_TAKEN_FOR_SWITCHING_TO_COPY_TO_CONTROLLER_ONLINE" : 40,
                        "TIME_TAKEN_FOR_IMPORTING_CONTROLLER_MODEL_ONLINE" : 40,
                        "TIME_TAKEN_FOR_FIRMWARE_UPGRADING_IN_COPY_TO_CONTROLLER_ONLINE" : 240, 
                        "TIME_TAKEN_FOR_FIRMWARE_UPGRADE_FAILED_COPY_TO_CONTROLLER_ONLINE" : 15,
                        "TIME_TAKEN_FOR_PROGRAMMING TO CONTROLLER_ONLINE" : 30,
                        "TIME_TAKEN_FOR_SWITCHING_TO_IMPORT_SETTINGS_FROM_CONTROLLER_ONLINE" : 30,
                         "TIME_TAKEN_FOR_FACTORY_RESET_IN_PROJECT_OFFLINE" : 3,
                        #"TIME_TAKEN_FOR_PRINT_OFFLINE" : 20,
                        #"TIME_TAKEN_FOR_PRINT_ONLINE" : 20,
                        #"TIME_TAKEN_FOR_FACTORY_RESET_IN_CONTROLLER_ONLINE" : 20,
                        "TIME_TAKEN_FOR_DISABLING_PORT_COMMUNICATION_IN_KOOLPROG_OFFLINE" : 20,
                        "TIME_TAKEN_FOR_SWITCHING_FROM_CHART_WINDOW_TO_ONLINE_SERVICE_WINDOW_ONLINE" : 4,
                        "TIME_TAKEN_FOR_DISABLING_PORT_COMMUNICATION_IN_KOOLPROG_ONLINE" : 3,
                        "TIME_TAKEN_FOR_SWITCHING_TO_HOME_FROM_ANY_OTHER_WINDOW_ONLINE" : 3,
                        "TIME_TAKEN_FOR_ENABLING_PORT_COMMUNICATION_IN_KOOLPROG_ONLINE" : 30,
                        "TIME_TAKEN_FOR_OPENING_PARAMETER_SHEET_OFFLINE" : 6,
                        "TIME_TAKEN_FOR_SAVING_PASSWORD_DETAILS_OFFLINE" : 6,
                        "TIME_TAKEN_FOR_DIALOG_TO_OPEN_OFFLINE" : 8,
                        "TIME_TAKEN_FOR_CONFIRM_SAVEAS_TO_BE_VISIBLE_ONLINE" : 3,
                        "TIME_TAKEN_FOR_LOADING_PARAMETERS_AFTER_CLICKING_ALL_TREE_ITEM_OFFLINE" : 15, 
                        "TIME_TAKEN_FOR_SWITCHING_FROM_ONLINE_SERVICE_WINDOW_TO_CHART_WINDOW_ONLINE" : 4,
                        "TIME_TAKEN_FOR_MINOR_DELAY_IN_PROGRAMMING_CONTROLLER_IN_COPY_TO_CONTROLLER_ONLINE" : 5,
                        "TIME_TAKEN_FOR_PARAMETER_SHEET_TO_DISPLAY_AFTER_CLICKING_ON_PRINT_BUTTON_ONLINE" : 8,
                        "TIME_TAKEN_FOR_IMPORTING_CDF_FILE_ONLINE" : 10,
                        "TIME_TAKEN_FOR_IMPORTING_PROJECT_FILE_ONLINE" : 10,
                        "TIME_TAKEN_FOR_BIN_FILE_TO_GET_DISPLAYED_ONLINE" : 10,
                       # "TIME_TAKEN_FOR_EXPORT_IN_IMPORT_SETTINGS_FROM_CONTROLLER_ONLINE" : 6,
                        "TIME_TAKEN_FOR_IMPORTING_CDF_FILE_OFFLINE" : 20,
                        "TIME_TAKEN_FOR_FIRMWARE_UPGRADE_TO_FAIL_ONLINE" : 20,
                       "TIME_TAKEN_FOR_FETCHING_DETAILS_FROM_HOME_WINDOW_ONLINE" : 5,
                       "TIME_TAKEN_FOR_FETCHING_DETAILS_FROM_HOME_WINDOW_OFFLINE" : 5,
                       "TIME_TAKEN_FOR_DATAGRID_TO_GET_LOADED_ONLINE" : 6,
                       "TIME_TAKEN_FOR_ENABLING_MAINTENANCE_CONTROLLER_IN_KOOLPROG_ONLINE" : 40,
                       "TIME_TAKEN_FOR_LOADING_ALARMS_ONLINE" : 10,
                       "TIME_TAKEN_FOR_LOADING_PARAMETERS_AFTER_CLICKING_CLEARED_ALARMS_TREE_ITEM_ONLINE":20,
                       "TIME_TAKEN_FOR_LOADING_PARAMETERS_AFTER_CLICKING_RESET_ALARMS_BUTTON_ONLINE":15,
                       "TIME_TAKEN_FOR_LOADING_PARAMETERS_AFTER_CLICKING_SEARCH_BUTTON_ONLINE" : 8,
                       "TIME_TAKEN_FOR_LOADING_ALARMS_TAB_ONLINE" : 6
                       
                        }

        
        
######################################  Performance Test #####################################


################################ Unit ###################



Units = { 
         "Database_Supported_Units" : ["°C","C" ,"°K", "K", "bar"],
         "Imperial" : ["°F", "psi"],
         "Metric" : ["°C","C" ,"°K", "K", "bar"]
         
         }


################################ Unit ###################


Default_value_by_means_of_application_selection = {
                                                   
                                                   "controllerFamily" : "ERC21x",
                                                   "application" : {
                                                                    
                                                                    "App0" : "App0Defaultvalue",
                                                                   "App1" :  "App1DefaultValue",
                                                                   "App2" : "App2DefaultValue",
                                                                   "App3" : "App3DefaultValue",
                                                                    "App4" : "App4DefaultValue",  
                                                                    "App5" : "App5DefaultValue",
                                                                    "App6" : "App6DefaultValue"
                                                                    
                                                                    }
                                                   
                                                   }

############### Maintenance Controller ############

CRO_controller = ["ETC1Hx", "EET", "ERC21x", "ERC11x"]

############### Maintenance Controller ############

############## File Extension ########### 

FW_Upgrade_File_Extension = ".BIN"

############## File Extension ########### 

######### CDF File ###########

CDF_File_Extension = ".cdf"

######### CDF File ###########
languages_with_decimals_in_float_values = ['English (United States)','Chinese (Simplified) Legacy','English (United Kingdom)']

datagrid_property_mapping = {"Datagrid" :
                       {"propertymapping" :{
                                          "Value":"Value",
                                          "Help":"Help_dataGrid",
                                          "MenuCode" : "Menu_Code",
                                          "ParameterName" : "Parameter_Name"
                                        },
                      },
                     }
ui_quickSetting_dataGrid_propertyMapping ={
                                           
                                           "Value": "Value"
                                           
                                           }
input_database_properties = {
                             
                             "AK-CC55" :
                             
                             {
                              
                              "ItemType" : AKCC55_Config.ItemTypes_available
                              
                              }
                             
                             }
Variant = {"AK-CC55":{"Single Coil":"AK-CC55 Single Coil","Multi Coil":"AK-CC55 Multi Coil","Compact":"AK-CC55 Compact"}}


############## File Extension ########### 
#values = [{'Main switch': 'Manual'}, {'Delay of outputs at power up': '5'}, {'Application mode': '1. Comp/Alarm/Light'}, {'AO1 Configuration': 'None'}, {'DI1 Configuration': 'None'}, {'DI2 Configuration': 'None'}, {'DI3 Configuration': 'None'}, {'Refrigerant': 'Not seleted'}, {'Pe sensor - Min range': '-1.0'}, {'Pe sensor - Max range': '12.0'}, {'Temperature sensor type': 'Pt 1000'}, {'Food type': 'None'}, {'Food temp. sensor': 'Alarm air'}, {'Defrost method': 'Electrical'}, {'Defrost stop method': 'Time'}, {'Network address': '0'}, {'Service pin': 'OFF'}, {'DO1 Function': 'AKV opening A'}, {'DO2 Function': 'Alarm'}, {'DO3 Function': 'Compressor 1'}, {'DO4 Function': 'Defrost A'}, {'DO5 Function': 'Light'}, {'DO6 Function': 'Fan'}, {'DI1 Function': 'None'}, {'DI2 Function': 'None'}, {'DI3 Function': 'None'}, {'AI1 Function': 'Pe Evap Pressure'}, {'AI2 Function': 'S2 Coil Outlet A'}, {'AI3 Function': 'S3 Return Air B'}, {'AI4 Function': 'S4 Discharge Air A'}, {'AI5 Function': 'S5 Evaporator A'}, {'AI6 Function': 'S6 product temp.'}, {'AO1 Function': 'None'}, {'Control state A': 'Manual control'}, {'Thermostat air temp. A': '180.0'}, {'Food temperature A': '180.0'}, {'S4 Discharge Air A': '-80.0'}, {'Night condition': 'OFF'}, {'Thermostat cutin temp.': '4.0'}, {'Thermostat cutout temp.': '2.0'}, {'Thermostat runtime A': '0'}, {'Thermostat mode': 'ON/OFF'}, {'Cutout 1': '2.0'}, {'Differential': '2.0'}, {'Max cutout limit': '50.0'}, {'Min cutout limit': '-50.0'}, {'Thermostat sensor S4 %': '100'}, {'Thermostat sensor S4 % night': '100'}, {'Night offset': '0.0'}, {'S4 frost protection': '-50.0'}, {'Melt interval': '1'}, {'Melt period': '5'}, {'Control state A': 'Manual control'}, {'Alarm status': 'ON'}, {'Alarm air temp. A': '180.0'}, {'High alarm limit': '0.0'}, {'Low alarm limit': '0.0'}, {'S4 Air OFF evap. A': '-80.0'}, {'Reset alarms': 'OFF'}, {'Alarm sensor S4% A': '100'}, {'High alarm limit 1': '8.0'}, {'Low alarm limit 1': '-30.0'}, {'Alarm delay A': '30'}, {'Alarm delay pulldown A': '90'}, {'Use product sensor S6': 'No'}, {'Control state A': 'Normal ctrl.'}, {'Control state A': 'Manual control'}, {'Thermostat air temp. A': '180.0'}, {'S4 Air OFF evap. A': '-80.0'}, {'AKV opening A': '0'}, {'Pe Evap Pressure': '12.0'}, {'Te Evap. temp.': '0.0'}, {'S2 Coil Outlet A': '-80.0'}, {'Superheat A': '180.0'}, {'Superheat reference A': '7.5'}, {'Min superheat limit': '3.0'}, {'Max superheat limit': '12.0'}, {'MOP temperature': '15.0'}, {'AKV Period time': '6'}, {'Min superheat liquid ctrl': '1.0'}, {'Max superheat liquid ctrl.': '3.0'}, {'Control state A': 'Manual control'}, {'Defrost A': 'OFF'}, {'Defrost time A': '0'}, {'Start defrost': 'OFF'}, {'Stop defrost': 'OFF'}, {'Defrost method': 'Electrical'}, {'Defrost stop method': 'Time'}, {'Max defrost time': '45'}, {'Defrost start interval': '8'}, {'Time staggering power up': '0'}, {'Max thermostat runtime': '0'}, {'Pump down delay': '0'}, {'Drip off time': '0'}, {'Max hold time': '20'}, {'Fan control during defrost': 'ON'}, {'Fan start delay': '0'}, {'Fan start temperature': '-5.0'}, {'Display delay after defrost': '30'}, {'Adaptive defrost mode': 'OFF'}, {'Defrost schedule': 'No'}, {'Compressor 1': 'OFF'}, {'Min ON time': '0'}, {'Min OFF time': '0'}, {'Control state A': 'Manual control'}, {'Fan': 'OFF'}, {'Fan pulsing mode': 'No pulsing'}, {'Fan stop high S5 temp.': '50.0'}, {'Fan at forced closing': 'ON'}, {'Control state A': 'Normal ctrl.'}, {'Control state A': 'Manual control'}, {'Night condition': 'OFF'}, {'Light': 'OFF'}, {'Light control mode': 'Day and night'}, {'Light at Main switch OFF': 'OFF'}, {'Fan stop at blinds closing': '0'}, {'Case cleaning mode': 'OFF'}, {'Control state A': 'Manual control'}, {'Display readout A': '-80.0'}, {'Display readout': 'Display air'}, {'Display air S4%': '100'}, {'Display readout adjustment': '-2.0'}, {'Temperature unit': 'Celsius'}, {'Display lock': 'OFF'}, {'Alarm relay priority': 'Medium priority'}, {'Mute alarm': 'OFF'}, {'High temperature - Priority': 'High'}, {'Low temperature - Priority': 'High'}, {'Sensor errors - Priority': 'High'}, {'Defrost - Priority': 'Low'}, {'Miscellaneous - Priority': 'Medium'}, {'Injection - Priority': 'Medium'}, {'Control stopped - Priority': 'Low'}, {'Access code 3': '0'}, {'Access code 2': '0'}, {'Access code 1': '0'}, {'Network status': '0'}, {'Network address': '0'}, {'Baudrate': 'Auto'}, {'Parity and stop bit': 'Even'}, {'S3 Return Air B': '0.0'}, {'S4 Air OFF evap. A - Adjustment': '0.0'}, {'Make new factory': 'OFF'}, {'Reset to factory settings': 'OFF'}, {'Superheat ctrl. mode A': 'Adaptive'}, {'Superheat close A': '2.0'}, {'AFidentForce A': '0.0'}, {'Superheat Kp min A': '2.0'}, {'Superheat Kp max A': '4.0'}, {'Superheat Tn A': '300'}, {'Te feedback gain A': '-1.0'}, {'Kp MTR control A': '4.0'}, {'Tn MTR control A': '900'}, {'AFident A': '3.0'}, {'Calculated Max OD A': '100'}, {'Superheat close liquid ctrl. A': '-3.0'}, {'AFident Ee': '3.0'}, {'Aver.OD Ee': '20.0'}, {'Control state A': 'Manual control'}, {'Regulation condition A': 'Main switch OFF'}, {'MC Actual cutin temp.': '4.0'}, {'MC Actual cutout temp.': '2.0'}, {'MC Ther. toggle': 'No action'}, {'MC Load request': '0'}, {'MC Max Te offset': '180.0'}, {'MC Liquid control': 'OFF'}, {'MC Night setback': 'OFF'}, {'MC Case shutdown': 'OFF'}, {'MC Forced closing': 'OFF'}, {'MC Forced cooling': 'OFF'}, {'MC Defrost start': 'OFF'}, {'MC Defrost state': 'OFF'}, {'MC Hold after defrost': 'OFF'}, {'MC Stop defrost': 'OFF'}, {'MC Request next defrost': 'No'}, {'MC Light signal': 'OFF'}, {'MC Actual dewpoint': '-150.0'}, {'MC Tc temp. mean': '-150.0'}, {'MC Po load factor': '0.0'}, {'MC Bluetooth lock': 'OFF'}, {'MC Min delta T': '-180.0'}, {'S4 Air OFF evap. A': '0'}, {'DI1 Status': 'OFF'}, {'Alarm': 'OFF'}, {'Compressor 1': 'OFF'}, {'Defrost A': 'OFF'}, {'Light': 'OFF'}, {'Fan': 'OFF'}, {'Alarm - override': 'MAN OFF'}, {'Compressor 1 - override': 'MAN OFF'}, {'Defrost A - override': 'MAN OFF'}, {'Light - override': 'MAN OFF'}, {'Fan - override': 'MAN OFF'}, {'S4 Air OFF evap. A': '0'}, {'Fan': 'OFF'}, {'Light': 'OFF'}, {'Compressor 1': 'OFF'}, {'Defrost A': 'OFF'}, {'Alarm': 'OFF'}, {'Alarm': 'OFF'}]   
parametervalues = [{'Main switch': 'Manual'}, {'Delay of outputs at power up': '5'}, {'Main switch': 'Manual'}, {'Application mode': '8. Coldroom'}, {'AO1 Configuration': 'Valve driver'}, {'AO1 Min voltage': '0.0'}, {'AO1 Max voltage': '10.0'}, {'DI2 Configuration': 'Door function'}, {'DI3 Configuration': 'DI status'}, {'Refrigerant': 'Not seleted'}, {'Pe Min range': '-1.0'}, {'Pe Max range': '12.0'}, {'Temperature sensor type': 'Pt 1000'}, {'Food type': 'None'}, {'Food temp. sensor': 'Alarm air'}, {'Defrost method': 'Electrical'}, {'Defrost stop method': 'Time'}, {'Network address': '0'}, {'Service pin': 'OFF'}, {'DO1 Function': 'Liquid line solenoid'}, {'DO2 Function': 'Alarm relay'}, {'DO3 Function': 'None'}, {'DO4 Function': 'Defrost A'}, {'DO5 Function': 'Light'}, {'DO6 Function': 'Fan'}, {'DI2 Function': 'Door function'}, {'DI3 Function': 'Digital input status'}, {'AI1 Function': 'Pe Evap. pressure'}, {'AI2 Function': 'S2 Gas outlet A'}, {'AI3 Function': 'S3 Air ON evap. A'}, {'AI4 Function': 'S4 Air OFF evap. A'}, {'AI5 Function': 'S5 Evaporator A'}, {'AI6 Function': 'S6 product temp.'}, {'AI7 Function': 'Humidity sensor'}, {'AO1 Function': 'EEV opening A'}, {'Control state A': 'Manual control'}, {'Thermostat air temp. A': '180.0'}, {'Food temperature A': '180.0'}, {'S4 Air OFF evap. A': '-80.0'}, {'Night condition': 'OFF'}, {'Thermostat cutin temp.': '4.0'}, {'Thermostat cutout temp.': '2.0'}, {'Thermostat runtime A': '0'}, {'Thermostat mode': 'ON/OFF'}, {'Cutout 1': '2.0'}, {'Differential': '2.0'}, {'Max cutout limit': '50.0'}, {'Min cutout limit': '-50.0'}, {'Thermostat sensor S4 %': '100'}, {'Thermostat sensor S4 % night': '100'}, {'Night offset': '0.0'}, {'S4 frost protection': '-50.0'}, {'Melt interval': '1'}, {'Melt period': '5'}, {'Alarm status': 'ON'}, {'Control state A': 'Manual control'}, {'Alarm air temp. A': '180.0'}, {'High alarm limit': '0.0'}, {'Low alarm limit': '0.0'}, {'S4 Air OFF evap. A': '-80.0'}, {'Reset alarms': 'OFF'}, {'Alarm sensor S4% A': '100'}, {'High alarm limit 1': '8.0'}, {'Low alarm limit 1': '-30.0'}, {'Alarm delay A': '30'}, {'Alarm delay pulldown A': '90'}, {'Use product sensor S6': 'No'}, {'Door open alarm delay': '60'}, {'Door restart inj. delay': '30'}, {'Control state A': 'Manual control'}, {'Humidity control': 'None'}, {'Control state A': 'Manual control'}, {'Thermostat air temp. A': '180.0'}, {'S4 Air OFF evap. A': '-80.0'}, {'EEV opening A': '0'}, {'Liquid line solenoid': 'OFF'}, {'Pe Evap. pressure': '12.0'}, {'Te Evap. temp.': '0.0'}, {'S2 Gas outlet A': '-80.0'}, {'Superheat A': '180.0'}, {'Superheat reference A': '7.5'}, {'Min superheat limit': '3.0'}, {'Max superheat limit': '12.0'}, {'MOP temperature': '15.0'}, {'Min superheat liquid ctrl': '1.0'}, {'Max superheat liquid ctrl.': '3.0'}, {'LLSV closing delay': '5'}, {'Control state A': 'Manual control'}, {'Defrost A': 'OFF'}, {'Defrost time A': '0'}, {'Start defrost': 'OFF'}, {'Stop defrost': 'OFF'}, {'Defrost method': 'Electrical'}, {'Defrost stop method': 'Time'}, {'Max defrost time': '45'}, {'Defrost start interval': '8'}, {'Time staggering power up': '0'}, {'Max thermostat runtime': '0'}, {'Pump down delay': '0'}, {'Drip off time': '0'}, {'Max hold time': '20'}, {'Fan control during defrost': 'ON'}, {'Fan start delay': '0'}, {'Fan start temperature': '-5.0'}, {'Display delay after defrost': '30'}, {'Adaptive defrost mode': 'OFF'}, {'Defrost schedule': 'No'}, {'Control state A': 'Manual control'}, {'Fan': 'OFF'}, {'Fan pulsing mode': 'No pulsing'}, {'Fan stop high S5 temp.': '50.0'}, {'Fan at forced closing': 'ON'}, {'Control state A': 'Normal ctrl.'}, {'Control state A': 'Manual control'}, {'Night condition': 'OFF'}, {'Light': 'OFF'}, {'Light control mode': 'Day and night'}, {'Light at Main switch OFF': 'OFF'}, {'Fan stop at blinds closing': '0'}, {'Case cleaning mode': 'OFF'}, {'Control state A': 'Manual control'}, {'Display readout 1': '-80.0'}, {'Display readout': 'Display air'}, {'Display air S4%': '100'}, {'Display readout adjustment': '0.0'}, {'Temperature unit': 'Celsius'}, {'Display lock': 'OFF'}, {'Alarm relay': 'OFF'}, {'Alarm relay priority': 'Medium priority'}, {'Mute alarm': 'OFF'}, {'High temperature - Priority': 'High'}, {'Low temperature - Priority': 'High'}, {'Sensor errors - Priority': 'High'}, {'Defrost - Priority': 'Low'}, {'Miscellaneous - Priority': 'Medium'}, {'Injection - Priority': 'Medium'}, {'Control stopped - Priority': 'Low'}, {'Access code 3': '0'}, {'Access code 2': '0'}, {'Access code 1': '0'}, {'Network status': '0'}, {'Network address': '0'}, {'Baudrate': 'Auto'}, {'Parity and stop bit': 'Even'}, {'S4 Air OFF evap. A - Adjustment': '0.0'}, {'Make new factory': 'OFF'}, {'Reset to factory settings': 'OFF'}, {'Superheat ctrl. mode A': 'Adaptive'}, {'Superheat close A': '2.0'}, {'AFidentForce A': '0.0'}, {'Superheat Kp min A': '2.0'}, {'Superheat Kp max A': '4.0'}, {'Superheat Tn A': '300'}, {'Te feedback gain A': '-1.0'}, {'Kp MTR control A': '4.0'}, {'Tn MTR control A': '900'}, {'AFident A': '3.0'}, {'Calculated Max OD A': '100'}, {'Superheat close liquid ctrl. A': '-3.0'}, {'AFident Ee': '3.0'}, {'Aver.OD Ee': '20.0'}, {'Control state A': 'Manual control'}, {'Regulation condition A': 'Main switch OFF'}, {'MC Actual cutin temp.': '4.0'}, {'MC Actual cutout temp.': '2.0'}, {'MC Ther. toggle': 'No action'}, {'MC Load request': '0'}, {'MC Max Te offset': '180.0'}, {'MC Liquid control': 'OFF'}, {'MC Night setback': 'OFF'}, {'MC Case shutdown': 'OFF'}, {'MC Forced closing': 'OFF'}, {'MC Forced cooling': 'OFF'}, {'MC Defrost start': 'OFF'}, {'MC Defrost state': 'OFF'}, {'MC Hold after defrost': 'OFF'}, {'MC Stop defrost': 'OFF'}, {'MC Request next defrost': 'No'}, {'MC Light signal': 'OFF'}, {'MC Actual dewpoint': '-150.0'}, {'MC Tc temp. mean': '-150.0'}, {'MC Po load factor': '0.0'}, {'MC Bluetooth lock': 'OFF'}, {'MC Min delta T': '-180.0'}, {'S4 Air OFF evap. A': '0'}, {'Alarm relay': 'OFF'}, {'Defrost A': 'OFF'}, {'Light': 'OFF'}, {'Fan': 'OFF'}, {'Liquid line solenoid': 'OFF'}, {'EEV override A': '0'}, {'Alarm relay - override': 'MAN OFF'}, {'Defrost A - override': 'MAN OFF'}, {'Light - override': 'MAN OFF'}, {'Fan - override': 'MAN OFF'}, {'LLSV - override': 'MAN OFF'}, {'S4 Air OFF evap. A': '0'}, {'Fan': 'OFF'}, {'Light': 'OFF'}, {'Defrost A': 'OFF'}, {'Alarm relay': 'OFF'}, {'Liquid line solenoid': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}, {'Dehumidifier': 'OFF'}]
