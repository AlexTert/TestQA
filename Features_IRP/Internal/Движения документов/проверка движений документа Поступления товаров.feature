﻿#language: ru

@tree
@ДвиженияДокументов
Функционал: проверка движения документа Поступления товаров

Как Тестировщик я хочу
проверить движения документа Поступления товаров 
чтобы убедится что документ делает движения по нужным регистрам   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: _0501 подготовительный сценарий (движение документа Поступление товаров)
	Когда экспорт основных данных
	Когда загрузка документа Поступлений товаров и услуг
	И я выполняю код встроенного языка на сервере
		|'Документы.PurchaseInvoice.НайтиПоНомеру(1001).ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение)'|
	
Сценарий: _0502 проверка движений документа Поступления товаров по регистру R1001 Закупки
	Дано Я открываю навигационную ссылку "e1cib/list/Document.PurchaseInvoice"
	И в таблице "List" я перехожу к строке
		| 'Номер' |      
		| '1 001' |					
	И я нажимаю на кнопку с именем 'FormReportDocumentRegistrationsReportRegistrationsReport'
	И из выпадающего списка с именем 'FilterRegister' я выбираю точное значение "R1001 Закупки"
	И я нажимаю на кнопку с именем 'GenerateReport'
	Тогда табличный документ 'ResultTable' равен:
		| 'Поступление товаров и услуг 1 001 от 10.02.2025 14:34:51' | ''                    | ''           | ''      | ''                  | ''             | ''                       | ''                          | ''                             | ''       | ''                                                         | ''                        | ''                                     | ''                  |
		| 'Движения документа по регистрам'                          | ''                    | ''           | ''      | ''                  | ''             | ''                       | ''                          | ''                             | ''       | ''                                                         | ''                        | ''                                     | ''                  |
		| 'Регистр  "R1001 Закупки"'                                 | ''                    | ''           | ''      | ''                  | ''             | ''                       | ''                          | ''                             | ''       | ''                                                         | ''                        | ''                                     | ''                  |
		| ''                                                         | 'Period'              | 'Resources'  | ''      | ''                  | ''             | 'Dimensions'             | ''                          | ''                             | ''       | ''                                                         | ''                        | ''                                     | 'Attributes'        |
		| ''                                                         | ''                    | 'Количество' | 'Сумма' | 'Сумма без налогов' | 'Сумма скидки' | 'Организация'            | 'Структурное подразделение' | 'Вид мультивалютной аналитики' | 'Валюта' | 'Инвойс'                                                   | 'Характеристика'          | 'Ключ строки'                          | 'Отложенный расчет' |
		| ''                                                         | '10.02.2025 14:34:51' | '1'          | ''      | ''                  | ''             | 'Собственная компания 1' | ''                          | 'В валюте бюджетирования'      | 'EUR'    | 'Поступление товаров и услуг 1 001 от 10.02.2025 14:34:51' | 'Услуга'                  | '21b4c24f-4547-4978-91f2-4e3b3b70e5c8' | 'Да'                |
		| ''                                                         | '10.02.2025 14:34:51' | '1'          | '171,8' | '143,17'            | ''             | 'Собственная компания 1' | ''                          | 'В локальной валюте страны'    | 'EUR'    | 'Поступление товаров и услуг 1 001 от 10.02.2025 14:34:51' | 'Услуга'                  | '21b4c24f-4547-4978-91f2-4e3b3b70e5c8' | 'Нет'               |
		| ''                                                         | '10.02.2025 14:34:51' | '1'          | '200'   | '166,67'            | ''             | 'Собственная компания 1' | ''                          | 'ru наименование не заполнено' | 'USD'    | 'Поступление товаров и услуг 1 001 от 10.02.2025 14:34:51' | 'Услуга'                  | '21b4c24f-4547-4978-91f2-4e3b3b70e5c8' | 'Нет'               |
		| ''                                                         | '10.02.2025 14:34:51' | '1'          | '200'   | '166,67'            | ''             | 'Собственная компания 1' | ''                          | 'В валюте отчетности'          | 'USD'    | 'Поступление товаров и услуг 1 001 от 10.02.2025 14:34:51' | 'Услуга'                  | '21b4c24f-4547-4978-91f2-4e3b3b70e5c8' | 'Нет'               |
		| ''                                                         | '10.02.2025 14:34:51' | '1'          | '200'   | '166,67'            | ''             | 'Собственная компания 1' | ''                          | 'Валюта соглашения, USD'       | 'USD'    | 'Поступление товаров и услуг 1 001 от 10.02.2025 14:34:51' | 'Услуга'                  | '21b4c24f-4547-4978-91f2-4e3b3b70e5c8' | 'Нет'               |
		| ''                                                         | '10.02.2025 14:34:51' | '2'          | ''      | ''                  | ''             | 'Собственная компания 1' | ''                          | 'В валюте бюджетирования'      | 'EUR'    | 'Поступление товаров и услуг 1 001 от 10.02.2025 14:34:51' | 'Товар без характеристик' | 'b08e4ffd-f2fa-477f-9b91-30234057d4a6' | 'Да'                |
		| ''                                                         | '10.02.2025 14:34:51' | '2'          | '171,8' | '143,17'            | ''             | 'Собственная компания 1' | ''                          | 'В локальной валюте страны'    | 'EUR'    | 'Поступление товаров и услуг 1 001 от 10.02.2025 14:34:51' | 'Товар без характеристик' | 'b08e4ffd-f2fa-477f-9b91-30234057d4a6' | 'Нет'               |
		| ''                                                         | '10.02.2025 14:34:51' | '2'          | '200'   | '166,67'            | ''             | 'Собственная компания 1' | ''                          | 'ru наименование не заполнено' | 'USD'    | 'Поступление товаров и услуг 1 001 от 10.02.2025 14:34:51' | 'Товар без характеристик' | 'b08e4ffd-f2fa-477f-9b91-30234057d4a6' | 'Нет'               |
		| ''                                                         | '10.02.2025 14:34:51' | '2'          | '200'   | '166,67'            | ''             | 'Собственная компания 1' | ''                          | 'В валюте отчетности'          | 'USD'    | 'Поступление товаров и услуг 1 001 от 10.02.2025 14:34:51' | 'Товар без характеристик' | 'b08e4ffd-f2fa-477f-9b91-30234057d4a6' | 'Нет'               |
		| ''                                                         | '10.02.2025 14:34:51' | '2'          | '200'   | '166,67'            | ''             | 'Собственная компания 1' | ''                          | 'Валюта соглашения, USD'       | 'USD'    | 'Поступление товаров и услуг 1 001 от 10.02.2025 14:34:51' | 'Товар без характеристик' | 'b08e4ffd-f2fa-477f-9b91-30234057d4a6' | 'Нет'               |
	И я закрываю все окна клиентского приложения

Сценарий: _0503 проверка движений документа Поступления товаров по регистру R1021 Взаиморасчеты с поставщиками
	И я закрываю все окна клиентского приложения
	Дано Я открываю навигационную ссылку "e1cib/list/Document.PurchaseInvoice"
	И в таблице "List" я перехожу к строке
		| 'Номер' |      
		| '1 001' |					
	Когда открылось окно "Поступления товаров и услуг"
	И я нажимаю на кнопку с именем 'FormReportDocumentRegistrationsReportRegistrationsReport'
	И из выпадающего списка с именем 'FilterRegister' я выбираю точное значение "R1021 Взаиморасчеты с поставщиками"
	И я нажимаю на кнопку с именем 'GenerateReport'	
	Тогда табличный документ 'ResultTable' равен:
		| 'Поступление товаров и услуг 1 001 от 10.02.2025 14:34:51' | ''            | ''                    | ''          | ''                       | ''                          | ''                             | ''       | ''            | ''            | ''                           | ''                   | ''                  | ''                             |
		| 'Движения документа по регистрам'                          | ''            | ''                    | ''          | ''                       | ''                          | ''                             | ''       | ''            | ''            | ''                           | ''                   | ''                  | ''                             |
		| 'Регистр  "R1021 Взаиморасчеты с поставщиками"'            | ''            | ''                    | ''          | ''                       | ''                          | ''                             | ''       | ''            | ''            | ''                           | ''                   | ''                  | ''                             |
		| ''                                                         | 'Record type' | 'Period'              | 'Resources' | 'Dimensions'             | ''                          | ''                             | ''       | ''            | ''            | ''                           | ''                   | 'Attributes'        | ''                             |
		| ''                                                         | ''            | ''                    | 'Сумма'     | 'Организация'            | 'Структурное подразделение' | 'Вид мультивалютной аналитики' | 'Валюта' | 'Контрагент'  | 'Партнер'     | 'Соглашение'                 | 'Документ основание' | 'Отложенный расчет' | 'Закрытие авансов поставщиков' |
		| ''                                                         | 'Приход'      | '10.02.2025 14:34:51' | ''          | 'Собственная компания 1' | ''                          | 'В валюте бюджетирования'      | 'EUR'    | 'Поставщик 2' | 'Поставщик 2' | 'Соглашение с поставщиком 2' | ''                   | 'Да'                | ''                             |
		| ''                                                         | 'Приход'      | '10.02.2025 14:34:51' | '343,6'     | 'Собственная компания 1' | ''                          | 'В локальной валюте страны'    | 'EUR'    | 'Поставщик 2' | 'Поставщик 2' | 'Соглашение с поставщиком 2' | ''                   | 'Нет'               | ''                             |
		| ''                                                         | 'Приход'      | '10.02.2025 14:34:51' | '400'       | 'Собственная компания 1' | ''                          | 'ru наименование не заполнено' | 'USD'    | 'Поставщик 2' | 'Поставщик 2' | 'Соглашение с поставщиком 2' | ''                   | 'Нет'               | ''                             |
		| ''                                                         | 'Приход'      | '10.02.2025 14:34:51' | '400'       | 'Собственная компания 1' | ''                          | 'В валюте отчетности'          | 'USD'    | 'Поставщик 2' | 'Поставщик 2' | 'Соглашение с поставщиком 2' | ''                   | 'Нет'               | ''                             |
		| ''                                                         | 'Приход'      | '10.02.2025 14:34:51' | '400'       | 'Собственная компания 1' | ''                          | 'Валюта соглашения, USD'       | 'USD'    | 'Поставщик 2' | 'Поставщик 2' | 'Соглашение с поставщиком 2' | ''                   | 'Нет'               | ''                             |
	И я закрываю все окна клиентского приложения
					
				
