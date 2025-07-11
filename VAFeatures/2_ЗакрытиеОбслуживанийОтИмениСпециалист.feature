﻿#language: ru

@tree

Функционал: заполнение табличных частей документов "Обслуживание клиента" под пользователем с правами "Специалист"

Как тестировщик я хочу проверить работу данного програмного обеспечения
на предмет возможности заполнения табличной части документов "Обслуживание клиента" от имени пользователя с правами "Специалист",
чтобы убедиться в работоспособности нового функционала и правильности распределения прав между пользователями приложения  

Контекст:
	Дано Я подключаю TestClient "ТестКлиент" логин "Иванов (специалист)" пароль ""
	
Сценарий: заполнения табличных частей документов "Обслуживание клиента" под пользователем с правами "Специалист"
И В командном интерфейсе я выбираю 'Обслуживание клиентов' 'Обслуживания клиентов'
Тогда открылось окно 'Обслуживания клиентов'
И в таблице "Список" я перехожу к строке:
	| 'Время начала работ (план)' | 'Время окончания работ (план)' | 'Дата'       | 'Дата проведения работ' | 'Договор'                                  | 'Клиент'         | 'Комментарий'                                | 'Номер'     | 'Описание проблемы'                                   |
	| '8:30:00'                   | '10:30:00'                     | '01.07.2025' | '2 июля 2025 г.'        | 'Абонентский договор № 1 от 01.07.2025 г.' | 'ООО "Реклайнер"' | 'Тел. менеджера клиента: +7 123 (456) 7890.' | '000000001' | 'Клиент просит настроить работу информационной базы.' |
И в таблице "Список" я выбираю текущую строку
Тогда открылось окно 'Обслуживание клиента * от *'
И в таблице "ВыполненныеРаботы" я нажимаю на кнопку с именем 'ВыполненныеРаботыДобавить'
И в таблице "ВыполненныеРаботы" в поле с именем 'ВыполненныеРаботыОписаниеРабот' я ввожу текст 'Установил и настроил КриптоПро 5.0'
И я перехожу к следующему реквизиту
И в таблице "ВыполненныеРаботы" в поле с именем 'ВыполненныеРаботыФактическиПотраченоЧасов' я ввожу текст '1,00'
И я перехожу к следующему реквизиту
И в таблице "ВыполненныеРаботы" в поле с именем 'ВыполненныеРаботыЧасыКОплатеКлиенту' я ввожу текст '1,00'
И в таблице "ВыполненныеРаботы" я завершаю редактирование строки
И в таблице "ВыполненныеРаботы" я добавляю строку
И в таблице "ВыполненныеРаботы" я активизирую поле с именем "ВыполненныеРаботыОписаниеРабот"
И в таблице "ВыполненныеРаботы" в поле с именем 'ВыполненныеРаботыОписаниеРабот' я ввожу текст 'Установил необходимые сертификаты корневых удостоверяющих центров'
И я перехожу к следующему реквизиту
И в таблице "ВыполненныеРаботы" в поле с именем 'ВыполненныеРаботыФактическиПотраченоЧасов' я ввожу текст '0,50'
И я перехожу к следующему реквизиту
И в таблице "ВыполненныеРаботы" в поле с именем 'ВыполненныеРаботыЧасыКОплатеКлиенту' я ввожу текст '0,50'
И в таблице "ВыполненныеРаботы" я завершаю редактирование строки
И в таблице "ВыполненныеРаботы" я добавляю строку
И в таблице "ВыполненныеРаботы" я активизирую поле с именем "ВыполненныеРаботыОписаниеРабот"
И в таблице "ВыполненныеРаботы" в поле с именем 'ВыполненныеРаботыОписаниеРабот' я ввожу текст 'Установил плагин КриптоПро для Яндекс-Браузера'
И я перехожу к следующему реквизиту
И в таблице "ВыполненныеРаботы" в поле с именем 'ВыполненныеРаботыФактическиПотраченоЧасов' я ввожу текст '0,50'
И я перехожу к следующему реквизиту
И в таблице "ВыполненныеРаботы" в поле с именем 'ВыполненныеРаботыЧасыКОплатеКлиенту' я ввожу текст '0,50'
И в таблице "ВыполненныеРаботы" я завершаю редактирование строки
И в таблице "ВыполненныеРаботы" я добавляю строку
И в таблице "ВыполненныеРаботы" я активизирую поле с именем "ВыполненныеРаботыОписаниеРабот"
И в таблице "ВыполненныеРаботы" в поле с именем 'ВыполненныеРаботыОписаниеРабот' я ввожу текст 'Настроил доступ к двум торговым площадкам'
И я перехожу к следующему реквизиту
И в таблице "ВыполненныеРаботы" в поле с именем 'ВыполненныеРаботыФактическиПотраченоЧасов' я ввожу текст '1,00'
И я перехожу к следующему реквизиту
И в таблице "ВыполненныеРаботы" в поле с именем 'ВыполненныеРаботыЧасыКОплатеКлиенту' я ввожу текст '1,00'
И в таблице "ВыполненныеРаботы" я завершаю редактирование строки
И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
И я жду закрытия окна 'Обслуживание клиента * от * *' в течение 10 секунд
Тогда открылось окно 'Обслуживания клиентов'
И в таблице "Список" я перехожу к строке:
	| 'Время начала работ (план)' | 'Время окончания работ (план)' | 'Дата'       | 'Дата проведения работ' | 'Договор'                                  | 'Клиент'        | 'Комментарий'                                | 'Номер'     | 'Описание проблемы'                   |
	| '9:00:00'                   | '15:00:00'                     | '02.07.2025' | '3 июля 2025 г.'        | 'Абонентский договор № 2 от 02.07.2025 г.' | 'ИП Степ А.Н.' | 'Тел. менеджера клиента: +7 123 (456) 7890.' | '000000002' | 'Клиент просит подобрать ему сервер.' |
И в таблице "Список" я выбираю текущую строку
Тогда открылось окно 'Обслуживание клиента * от *'
И в таблице "ВыполненныеРаботы" я нажимаю на кнопку с именем 'ВыполненныеРаботыДобавить'
И в таблице "ВыполненныеРаботы" в поле с именем 'ВыполненныеРаботыОписаниеРабот' я ввожу текст 'Исследовал рынок на предмет необходимого оборудования и его стоимости'
И я перехожу к следующему реквизиту
И в таблице "ВыполненныеРаботы" в поле с именем 'ВыполненныеРаботыФактическиПотраченоЧасов' я ввожу текст '1,00'
И я перехожу к следующему реквизиту
И в таблице "ВыполненныеРаботы" в поле с именем 'ВыполненныеРаботыЧасыКОплатеКлиенту' я ввожу текст '1,00'
И в таблице "ВыполненныеРаботы" я завершаю редактирование строки
И в таблице "ВыполненныеРаботы" я добавляю строку
И в таблице "ВыполненныеРаботы" я активизирую поле с именем "ВыполненныеРаботыОписаниеРабот"
И в таблице "ВыполненныеРаботы" в поле с именем 'ВыполненныеРаботыОписаниеРабот' я ввожу текст 'Подобрал комплектующие'
И я перехожу к следующему реквизиту
И в таблице "ВыполненныеРаботы" в поле с именем 'ВыполненныеРаботыФактическиПотраченоЧасов' я ввожу текст '1,00'
И я перехожу к следующему реквизиту
И в таблице "ВыполненныеРаботы" в поле с именем 'ВыполненныеРаботыЧасыКОплатеКлиенту' я ввожу текст '1,00'
И в таблице "ВыполненныеРаботы" я завершаю редактирование строки
И в таблице "ВыполненныеРаботы" я добавляю строку
И в таблице "ВыполненныеРаботы" я активизирую поле с именем "ВыполненныеРаботыОписаниеРабот"
И в таблице "ВыполненныеРаботы" в поле с именем 'ВыполненныеРаботыОписаниеРабот' я ввожу текст 'Согласовал с клиентом и выставил счёт на оплату'
И я перехожу к следующему реквизиту
И в таблице "ВыполненныеРаботы" в поле с именем 'ВыполненныеРаботыФактическиПотраченоЧасов' я ввожу текст '1,00'
И я перехожу к следующему реквизиту
И в таблице "ВыполненныеРаботы" в поле с именем 'ВыполненныеРаботыЧасыКОплатеКлиенту' я ввожу текст '1,00'
И в таблице "ВыполненныеРаботы" я завершаю редактирование строки
И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
И я жду закрытия окна 'Обслуживание клиента * от * *' в течение 10 секунд
Тогда открылось окно 'Обслуживания клиентов'
И в таблице "Список" я перехожу к строке:
	| 'Время начала работ (план)' | 'Время окончания работ (план)' | 'Дата'       | 'Дата проведения работ' | 'Договор'                                  | 'Клиент'      | 'Комментарий'                                | 'Номер'     | 'Описание проблемы' |
	| '10:00:00'                  | '16:00:00'                     | '03.07.2025' | '4 июля 2025 г.'       | 'Абонентский договор № 3 от 03.07.2025 г.' | 'ООО "Антон"' | 'Тел. менеджера клиента: +7 123 (456) 7890.' | '000000003' | 'Решить проблему.'  |
И в таблице "Список" я выбираю текущую строку
Тогда открылось окно 'Обслуживание клиента * от *'
И в таблице "ВыполненныеРаботы" я нажимаю на кнопку с именем 'ВыполненныеРаботыДобавить'
И в таблице "ВыполненныеРаботы" в поле с именем 'ВыполненныеРаботыОписаниеРабот' я ввожу текст 'Выбор технологии и оборудования для объединения нескольких офисов и отдельных удаленных клиентов'
И я перехожу к следующему реквизиту
И в таблице "ВыполненныеРаботы" в поле с именем 'ВыполненныеРаботыФактическиПотраченоЧасов' я ввожу текст '2,00'
И я перехожу к следующему реквизиту
И в таблице "ВыполненныеРаботы" в поле с именем 'ВыполненныеРаботыЧасыКОплатеКлиенту' я ввожу текст '2,00'
И в таблице "ВыполненныеРаботы" я завершаю редактирование строки
И в таблице "ВыполненныеРаботы" я добавляю строку
И в таблице "ВыполненныеРаботы" я активизирую поле с именем "ВыполненныеРаботыОписаниеРабот"
И в таблице "ВыполненныеРаботы" в поле с именем 'ВыполненныеРаботыОписаниеРабот' я ввожу текст 'Предложение клиенту возможных вариантов, сравнение возможностей и стоимости'
И я перехожу к следующему реквизиту
И в таблице "ВыполненныеРаботы" в поле с именем 'ВыполненныеРаботыФактическиПотраченоЧасов' я ввожу текст '2,00'
И я перехожу к следующему реквизиту
И в таблице "ВыполненныеРаботы" в поле с именем 'ВыполненныеРаботыЧасыКОплатеКлиенту' я ввожу текст '2,00'
И в таблице "ВыполненныеРаботы" я завершаю редактирование строки
И в таблице "ВыполненныеРаботы" я добавляю строку
И в таблице "ВыполненныеРаботы" я активизирую поле с именем "ВыполненныеРаботыОписаниеРабот"
И в таблице "ВыполненныеРаботы" в поле с именем 'ВыполненныеРаботыОписаниеРабот' я ввожу текст 'Принятие решения и начало выбора оборудования'
И я перехожу к следующему реквизиту
И в таблице "ВыполненныеРаботы" в поле с именем 'ВыполненныеРаботыФактическиПотраченоЧасов' я ввожу текст '2,00'
И я перехожу к следующему реквизиту
И в таблице "ВыполненныеРаботы" в поле с именем 'ВыполненныеРаботыЧасыКОплатеКлиенту' я ввожу текст '2,00'
И в таблице "ВыполненныеРаботы" я завершаю редактирование строки
И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
И я жду закрытия окна 'Обслуживание клиента * от * *' в течение 10 секунд
