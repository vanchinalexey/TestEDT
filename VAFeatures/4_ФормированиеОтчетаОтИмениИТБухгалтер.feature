﻿#language: ru

@tree

Функционал: проверка формирования отчета "Анализ выставленных актов" под пользователем с правами "Бухгалтер ИТ-фирмы"

Как тестировщик я хочу проверить работу данного програмного обеспечения
на предмет возможности формирования отчета "Анализ выставленных актов" под пользователем с правами "Бухгалтер ИТ-фирмы",
чтобы убедиться в работоспособности нового функционала и правильности распределения прав между пользователями приложения

Контекст:
	Дано Я подключаю TestClient "ТестКлиент" логин "Самохвалова (ИТ-бухгалтер)" пароль ""

Сценарий: формирования отчета "Анализ выставленных актов" под пользователем с правами "Бухгалтер ИТ-фирмы"
И В командном интерфейсе я выбираю 'Обслуживание клиентов' 'Анализ выставленных актов'
Тогда открылось окно 'Анализ выставленных актов'
И в поле с именем 'Период1ДатаНачала' я ввожу текст '01.01.2025'
И я перехожу к следующему реквизиту
И в поле с именем 'Период1ДатаОкончания' я ввожу текст '31.12.2025'
И я перехожу к следующему реквизиту
И я нажимаю на кнопку с именем 'СформироватьОтчет'
* Проверяю соответствие полученного отчета эталонному
Тогда табличный документ "ОтчетТабличныйДокумент" содержит строки по шаблону:
	| 'Клиент'            | 'Договор'                                  | 'Сумма к оплате' | 'Сумма выполненных работ' |
	| 'ООО "Реклайнер"'     | 'Абонентский договор № 1 от 01.07.2025 г.' | '6 000,00'      | '6 000,00'                |
	| 'ИП Степ А.Н.' | 'Абонентский договор № 2 от 02.07.2025 г.' | '15 000,00'      | ''               |
	| 'ООО "Антон"'     | 'Абонентский договор № 3 от 03.07.2025 г.' | '12 000,00'      | '6 000,00'               |


