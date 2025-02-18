﻿
&НаКлиенте
Процедура ОткрытьНастройки(Команда)
	
	Если ПроверитьЗаполнение() Тогда 
		ПараметрыФормы = ПолучитьПараметрыФормы(РегЗадача);
		ОткрытьФорму("ВнешняяОбработка.ОбменSmartPricing.Форма.НастройкаПараметровРегламентнойЗадачи", ПараметрыФормы, ЭтотОбъект);
	КонецЕсли;
	
КонецПроцедуры

&НаСервереБезКонтекста
Функция ПолучитьПараметрыФормы(РегЗадача)
	
	ПараметрыФормы = Новый Структура;;
	Если СокрЛП(РегЗадача.ПараметрыВнешнейОбработкиСтрокой) <> "" Тогда
		ПараметрыФормы = ЗначениеИзСтрокиВнутр(РегЗадача.ПараметрыВнешнейОбработкиСтрокой);
	КонецЕсли;
	Возврат ПараметрыФормы;
	
КонецФункции

&НаКлиенте
Процедура ВыгрузитьДанные(Команда)
	
	Если ПроверитьЗаполнение() Тогда
		ВыгрузитьДанныеНаСервере();
	КонецЕсли;
	
КонецПроцедуры

&НаСервере
Процедура ВыгрузитьДанныеНаСервере()
	
	МодульОбъекта = РеквизитФормыВЗначение("Объект");
	МодульОбъекта.ВыполнитьОбработку(РегЗадача.ПараметрыВнешнейОбработкиСтрокой);
	
КонецПроцедуры


