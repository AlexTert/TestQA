﻿#language: ru

@tree
@ExportScenarios
@IgnoreOnCIMainBuild
Функционал: Экспорт документов для проверки движений

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: загрузка документа Поступлений товаров и услуг

	И я проверяю или создаю для справочника "RowIDs" объекты:
		| 'Ref'                                                            | 'DeletionMark' | 'Code' | 'Description'                          | 'AgreementSales' | 'Company'                                                           | 'CurrencySales' | 'LegalNameSales' | 'PartnerSales' | 'PriceIncludeTaxSales' | 'Store'                                                          | 'Unit'                                                          | 'ItemKey'                                                          | 'Branch' | 'Basis'                                                                    | 'RowID'                                | 'ProcurementMethod' | 'StoreSender' | 'StoreReceiver' | 'TransactionTypeSC'                                        | 'TransactionTypeGR'                          | 'TransactionType' | 'Requester' | 'AgreementPurchases'                                                 | 'PartnerPurchases'                                                 | 'LegalNamePurchases'                                                | 'PriceIncludeTaxPurchases' | 'CurrencyPurchases'                                                  |
		| 'e1cib/data/Catalog.RowIDs?ref=a25908bfb8d2fa1711efe7a306923eba' | 'False'        | 1      | 'b08e4ffd-f2fa-477f-9b91-30234057d4a6' | ''               | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | ''              | ''               | ''             | 'False'                | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb766bf96b2751' | ''       | 'e1cib/data/Document.PurchaseInvoice?ref=a25908bfb8d2fa1711efe7a306923ed0' | 'b08e4ffd-f2fa-477f-9b91-30234057d4a6' | ''                  | ''            | ''              | 'Enum.ShipmentConfirmationTransactionTypes.ReturnToVendor' | 'Enum.GoodsReceiptTransactionTypes.Purchase' | ''                | ''          | 'e1cib/data/Catalog.Agreements?ref=b762b13668d0905011eb76684b9f6871' | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794e' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb766bf96b2771' | 'True'                     | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' |
		| 'e1cib/data/Catalog.RowIDs?ref=a25908bfb8d2fa1711efe7a306923ecf' | 'False'        | 2      | '21b4c24f-4547-4978-91f2-4e3b3b70e5c8' | ''               | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | ''              | ''               | ''             | 'False'                | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb766bf96b2753' | ''       | 'e1cib/data/Document.PurchaseInvoice?ref=a25908bfb8d2fa1711efe7a306923ed0' | '21b4c24f-4547-4978-91f2-4e3b3b70e5c8' | ''                  | ''            | ''              | 'Enum.ShipmentConfirmationTransactionTypes.ReturnToVendor' | 'Enum.GoodsReceiptTransactionTypes.Purchase' | ''                | ''          | 'e1cib/data/Catalog.Agreements?ref=b762b13668d0905011eb76684b9f6871' | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794e' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb766bf96b2771' | 'True'                     | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' |

	// Документ.PurchaseInvoice

	И я проверяю или создаю для документа "PurchaseInvoice" объекты:
		| 'Ref'                                                                      | 'DeletionMark' | 'Number' | 'Date'                | 'Posted' | 'Agreement'                                                          | 'Company'                                                           | 'Currency'                                                           | 'DocDate'            | 'DocNumber' | 'LegalName'                                                         | 'Partner'                                                          | 'PriceIncludeTax' | 'IgnoreAdvances' | 'LegalNameContract' | 'Author'                                                        | 'Branch' | 'Description' | 'DocumentAmount' |
		| 'e1cib/data/Document.PurchaseInvoice?ref=a25908bfb8d2fa1711efe7a306923ed0' | 'False'        | 1001     | '10.02.2025 14:34:51' | 'True'   | 'e1cib/data/Catalog.Agreements?ref=b762b13668d0905011eb76684b9f6871' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | '01.01.0001 0:00:00' | ''          | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb766bf96b2771' | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794e' | 'True'            | 'False'          | ''                  | 'e1cib/data/Catalog.Users?ref=aa7f120ed92fbced11eb13d7279770c0' | ''       | ''            | 400              |

	И я перезаполняю для объекта табличную часть "ItemList":
		| 'Ref'                                                                      | 'Key'                                  | 'ItemKey'                                                          | 'Store'                                                          | 'PurchaseOrder' | 'Unit'                                                          | 'Quantity' | 'Price' | 'PriceType'                                             | 'TaxAmount' | 'TotalAmount' | 'NetAmount' | 'OffersAmount' | 'ProfitLossCenter' | 'ExpenseType'                                                                    | 'DeliveryDate'       | 'SalesOrder' | 'Detail' | 'AdditionalAnalytic' | 'DontCalculateRow' | 'QuantityInBaseUnit' | 'UseGoodsReceipt' | 'InternalSupplyRequest' |
		| 'e1cib/data/Document.PurchaseInvoice?ref=a25908bfb8d2fa1711efe7a306923ed0' | 'b08e4ffd-f2fa-477f-9b91-30234057d4a6' | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb766bf96b2751' | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | ''              | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 2          | 100     | 'e1cib/data/Catalog.PriceTypes?refName=ManualPriceType' | 33.33       | 200           | 166.67      |                | ''                 | ''                                                                               | '01.01.0001 0:00:00' | ''           | ''       | ''                   | 'False'            | 2                    | 'True'            | ''                      |
		| 'e1cib/data/Document.PurchaseInvoice?ref=a25908bfb8d2fa1711efe7a306923ed0' | '21b4c24f-4547-4978-91f2-4e3b3b70e5c8' | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb766bf96b2753' | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | ''              | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 1          | 200     | 'e1cib/data/Catalog.PriceTypes?refName=ManualPriceType' | 33.33       | 200           | 166.67      |                | ''                 | 'e1cib/data/Catalog.ExpenseAndRevenueTypes?ref=a25908bfb8d2fa1711efe7a306923eb9' | '01.01.0001 0:00:00' | ''           | ''       | ''                   | 'False'            | 1                    | 'False'           | ''                      |

	И я перезаполняю для объекта табличную часть "TaxList":
		| 'Ref'                                                                      | 'Key'                                  | 'Tax'                                                           | 'Analytics' | 'TaxRate'                                                          | 'Amount' | 'IncludeToTotalAmount' | 'ManualAmount' |
		| 'e1cib/data/Document.PurchaseInvoice?ref=a25908bfb8d2fa1711efe7a306923ed0' | 'b08e4ffd-f2fa-477f-9b91-30234057d4a6' | 'e1cib/data/Catalog.Taxes?ref=b762b13668d0905011eb7663e35d7970' | ''          | 'e1cib/data/Catalog.TaxRates?ref=b762b13668d0905011eb7663e35d796c' | 33.33    | 'True'                 | 33.33          |
		| 'e1cib/data/Document.PurchaseInvoice?ref=a25908bfb8d2fa1711efe7a306923ed0' | '21b4c24f-4547-4978-91f2-4e3b3b70e5c8' | 'e1cib/data/Catalog.Taxes?ref=b762b13668d0905011eb7663e35d7970' | ''          | 'e1cib/data/Catalog.TaxRates?ref=b762b13668d0905011eb7663e35d796c' | 33.33    | 'True'                 | 33.33          |

	И я перезаполняю для объекта табличную часть "Currencies":
		| 'Ref'                                                                      | 'Key' | 'CurrencyFrom'                                                       | 'Rate' | 'ReverseRate' | 'ShowReverseRate' | 'Multiplicity' | 'MovementType'                                                                                    | 'Amount' | 'IsFixed' |
		| 'e1cib/data/Document.PurchaseInvoice?ref=a25908bfb8d2fa1711efe7a306923ed0' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 1      | 1             | 'False'           | 1              | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796b' | 400      | 'False'   |
		| 'e1cib/data/Document.PurchaseInvoice?ref=a25908bfb8d2fa1711efe7a306923ed0' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 0.859  | 1.1641        | 'False'           | 1              | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796a' | 343.6    | 'False'   |
		| 'e1cib/data/Document.PurchaseInvoice?ref=a25908bfb8d2fa1711efe7a306923ed0' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 1      | 1             | 'False'           | 1              | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7968' | 400      | 'False'   |
		| 'e1cib/data/Document.PurchaseInvoice?ref=a25908bfb8d2fa1711efe7a306923ed0' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' |        |               | 'False'           |                | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7969' |          | 'False'   |

	И я перезаполняю для объекта табличную часть "RowIDInfo":
		| 'Ref'                                                                      | 'Key'                                  | 'RowID'                                | 'Quantity' | 'Basis' | 'CurrentStep' | 'NextStep'                                    | 'RowRef'                                                         | 'BasisKey' |
		| 'e1cib/data/Document.PurchaseInvoice?ref=a25908bfb8d2fa1711efe7a306923ed0' | 'b08e4ffd-f2fa-477f-9b91-30234057d4a6' | 'b08e4ffd-f2fa-477f-9b91-30234057d4a6' | 2          | ''      | ''            | 'e1cib/data/Catalog.MovementRules?refName=GR' | 'e1cib/data/Catalog.RowIDs?ref=a25908bfb8d2fa1711efe7a306923eba' | ''         |
		| 'e1cib/data/Document.PurchaseInvoice?ref=a25908bfb8d2fa1711efe7a306923ed0' | '21b4c24f-4547-4978-91f2-4e3b3b70e5c8' | '21b4c24f-4547-4978-91f2-4e3b3b70e5c8' | 1          | ''      | ''            | ''                                            | 'e1cib/data/Catalog.RowIDs?ref=a25908bfb8d2fa1711efe7a306923ecf' | ''         |

Сценарий: Загрузка документа Поступление товаров и услуг будущим числом

	// Справочник.RowIDs

	И я проверяю или создаю для справочника "RowIDs" объекты:
		| 'Ref'                                                            | 'DeletionMark' | 'Code' | 'Description'                          | 'AgreementSales' | 'Company'                                                           | 'CurrencySales' | 'LegalNameSales' | 'PartnerSales' | 'PriceIncludeTaxSales' | 'Store'                                                          | 'Unit'                                                          | 'ItemKey'                                                          | 'Branch' | 'Basis'                                                                    | 'RowID'                                | 'ProcurementMethod' | 'StoreSender' | 'StoreReceiver' | 'TransactionTypeSC'                                        | 'TransactionTypeGR'                          | 'TransactionType' | 'Requester' | 'AgreementPurchases'                                                 | 'PartnerPurchases'                                                 | 'LegalNamePurchases'                                                | 'PriceIncludeTaxPurchases' | 'CurrencyPurchases'                                                  |
		| 'e1cib/data/Catalog.RowIDs?ref=a25908bfb8d2fa1711efe87df8ec4e06' | 'False'        | 3      | 'fec957d6-2ff1-4c32-9069-d444900fb911' | ''               | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | ''              | ''               | ''             | 'False'                | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb766bf96b2751' | ''       | 'e1cib/data/Document.PurchaseInvoice?ref=a25908bfb8d2fa1711efe87df8ec4e08' | 'fec957d6-2ff1-4c32-9069-d444900fb911' | ''                  | ''            | ''              | 'Enum.ShipmentConfirmationTransactionTypes.ReturnToVendor' | 'Enum.GoodsReceiptTransactionTypes.Purchase' | ''                | ''          | 'e1cib/data/Catalog.Agreements?ref=b762b13668d0905011eb76684b9f6871' | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794e' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb766bf96b2771' | 'True'                     | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' |
		| 'e1cib/data/Catalog.RowIDs?ref=a25908bfb8d2fa1711efe87df8ec4e07' | 'False'        | 4      | 'd78dcb41-7e87-44ef-94c5-23e2afe7fbb9' | ''               | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | ''              | ''               | ''             | 'False'                | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb766bf96b2753' | ''       | 'e1cib/data/Document.PurchaseInvoice?ref=a25908bfb8d2fa1711efe87df8ec4e08' | 'd78dcb41-7e87-44ef-94c5-23e2afe7fbb9' | ''                  | ''            | ''              | 'Enum.ShipmentConfirmationTransactionTypes.ReturnToVendor' | 'Enum.GoodsReceiptTransactionTypes.Purchase' | ''                | ''          | 'e1cib/data/Catalog.Agreements?ref=b762b13668d0905011eb76684b9f6871' | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794e' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb766bf96b2771' | 'True'                     | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' |

	// Документ.PurchaseInvoice

	И я проверяю или создаю для документа "PurchaseInvoice" объекты:
		| 'Ref'                                                                      | 'DeletionMark' | 'Number' | 'Date'                                 | 'Posted' | 'Agreement'                                                          | 'Company'                                                           | 'Currency'                                                           | 'DocDate'            | 'DocNumber' | 'LegalName'                                                         | 'Partner'                                                          | 'PriceIncludeTax' | 'IgnoreAdvances' | 'LegalNameContract' | 'Author'                                                        | 'Branch' | 'Description' | 'DocumentAmount' |
		| 'e1cib/data/Document.PurchaseInvoice?ref=a25908bfb8d2fa1711efe87df8ec4e08' | 'False'        | 1002     | '{Строка(КонецДня(ТекущаяДата())+10)}' | 'True'   | 'e1cib/data/Catalog.Agreements?ref=b762b13668d0905011eb76684b9f6871' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | '01.01.0001 0:00:00' | ''          | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb766bf96b2771' | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794e' | 'True'            | 'False'          | ''                  | 'e1cib/data/Catalog.Users?ref=aa7f120ed92fbced11eb13d7279770c0' | ''       | ''            | 400              |

	И я перезаполняю для объекта табличную часть "ItemList":
		| 'Ref'                                                                      | 'Key'                                  | 'ItemKey'                                                          | 'Store'                                                          | 'PurchaseOrder' | 'Unit'                                                          | 'Quantity' | 'Price' | 'PriceType'                                             | 'TaxAmount' | 'TotalAmount' | 'NetAmount' | 'OffersAmount' | 'ProfitLossCenter' | 'ExpenseType'                                                                    | 'DeliveryDate'       | 'SalesOrder' | 'Detail' | 'AdditionalAnalytic' | 'DontCalculateRow' | 'QuantityInBaseUnit' | 'UseGoodsReceipt' | 'InternalSupplyRequest' |
		| 'e1cib/data/Document.PurchaseInvoice?ref=a25908bfb8d2fa1711efe87df8ec4e08' | 'fec957d6-2ff1-4c32-9069-d444900fb911' | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb766bf96b2751' | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | ''              | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 2          | 100     | 'e1cib/data/Catalog.PriceTypes?refName=ManualPriceType' | 33.33       | 200           | 166.67      |                | ''                 | ''                                                                               | '01.01.0001 0:00:00' | ''           | ''       | ''                   | 'False'            | 2                    | 'True'            | ''                      |
		| 'e1cib/data/Document.PurchaseInvoice?ref=a25908bfb8d2fa1711efe87df8ec4e08' | 'd78dcb41-7e87-44ef-94c5-23e2afe7fbb9' | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb766bf96b2753' | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | ''              | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 1          | 200     | 'e1cib/data/Catalog.PriceTypes?refName=ManualPriceType' | 33.33       | 200           | 166.67      |                | ''                 | 'e1cib/data/Catalog.ExpenseAndRevenueTypes?ref=a25908bfb8d2fa1711efe7a306923eb9' | '01.01.0001 0:00:00' | ''           | ''       | ''                   | 'False'            | 1                    | 'False'           | ''                      |

	И я перезаполняю для объекта табличную часть "TaxList":
		| 'Ref'                                                                      | 'Key'                                  | 'Tax'                                                           | 'Analytics' | 'TaxRate'                                                          | 'Amount' | 'IncludeToTotalAmount' | 'ManualAmount' |
		| 'e1cib/data/Document.PurchaseInvoice?ref=a25908bfb8d2fa1711efe87df8ec4e08' | 'fec957d6-2ff1-4c32-9069-d444900fb911' | 'e1cib/data/Catalog.Taxes?ref=b762b13668d0905011eb7663e35d7970' | ''          | 'e1cib/data/Catalog.TaxRates?ref=b762b13668d0905011eb7663e35d796c' | 33.33    | 'True'                 | 33.33          |
		| 'e1cib/data/Document.PurchaseInvoice?ref=a25908bfb8d2fa1711efe87df8ec4e08' | 'd78dcb41-7e87-44ef-94c5-23e2afe7fbb9' | 'e1cib/data/Catalog.Taxes?ref=b762b13668d0905011eb7663e35d7970' | ''          | 'e1cib/data/Catalog.TaxRates?ref=b762b13668d0905011eb7663e35d796c' | 33.33    | 'True'                 | 33.33          |

	И я перезаполняю для объекта табличную часть "Currencies":
		| 'Ref'                                                                      | 'Key' | 'CurrencyFrom'                                                       | 'Rate' | 'ReverseRate' | 'ShowReverseRate' | 'Multiplicity' | 'MovementType'                                                                                    | 'Amount' | 'IsFixed' |
		| 'e1cib/data/Document.PurchaseInvoice?ref=a25908bfb8d2fa1711efe87df8ec4e08' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 1      | 1             | 'False'           | 1              | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796b' | 400      | 'False'   |
		| 'e1cib/data/Document.PurchaseInvoice?ref=a25908bfb8d2fa1711efe87df8ec4e08' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 0.859  | 1.1641        | 'False'           | 1              | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796a' | 343.6    | 'False'   |
		| 'e1cib/data/Document.PurchaseInvoice?ref=a25908bfb8d2fa1711efe87df8ec4e08' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 1      | 1             | 'False'           | 1              | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7968' | 400      | 'False'   |
		| 'e1cib/data/Document.PurchaseInvoice?ref=a25908bfb8d2fa1711efe87df8ec4e08' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' |        |               | 'False'           |                | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7969' |          | 'False'   |

	И я перезаполняю для объекта табличную часть "RowIDInfo":
		| 'Ref'                                                                      | 'Key'                                  | 'RowID'                                | 'Quantity' | 'Basis' | 'CurrentStep' | 'NextStep'                                    | 'RowRef'                                                         | 'BasisKey' |
		| 'e1cib/data/Document.PurchaseInvoice?ref=a25908bfb8d2fa1711efe87df8ec4e08' | 'fec957d6-2ff1-4c32-9069-d444900fb911' | 'fec957d6-2ff1-4c32-9069-d444900fb911' | 2          | ''      | ''            | 'e1cib/data/Catalog.MovementRules?refName=GR' | 'e1cib/data/Catalog.RowIDs?ref=a25908bfb8d2fa1711efe87df8ec4e06' | ''         |
		| 'e1cib/data/Document.PurchaseInvoice?ref=a25908bfb8d2fa1711efe87df8ec4e08' | 'd78dcb41-7e87-44ef-94c5-23e2afe7fbb9' | 'd78dcb41-7e87-44ef-94c5-23e2afe7fbb9' | 1          | ''      | ''            | ''                                            | 'e1cib/data/Catalog.RowIDs?ref=a25908bfb8d2fa1711efe87df8ec4e07' | ''         |

