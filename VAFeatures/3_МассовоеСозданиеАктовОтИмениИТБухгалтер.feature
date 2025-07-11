﻿#language: ru

@tree

Функционал: массовое создание документов "Реализация товаров и услуг" с помощью обработки "Массовое создание актов" под пользователем с правами "Бухгалтер ИТ-фирмы"

Как тестировщик я хочу проверить работу данного програмного обеспечения
на предмет возможности массового создания документов "Реализация товаров и услуг" с помощью обработки "Массовое создание актов" от имени пользователя с правами "Бухгалтер ИТ-фирмы",
чтобы убедиться в работоспособности нового функционала и правильности распределения прав между пользователями приложения

Контекст:
	Дано Я подключаю TestClient "ТестКлиент" логин "Самохвалова (ИТ-бухгалтер)" пароль ""

Сценарий: массового создания документов "Реализация товаров и услуг" с помощью обработки "Массовое создание актов" под пользователем с правами "Бухгалтер ИТ-фирмы"
И В командном интерфейсе я выбираю 'Обслуживание клиентов' 'Массовое создание актов'
Тогда открылось окно 'Массовое создание актов'
И я нажимаю кнопку выбора у поля с именем "Период"
И в поле с именем 'Период' я ввожу текст '31.08.2025'
И в таблице "ДанныеОРеализациях" я перехожу к строке:
	| 'Договор'                                  |
	| 'Абонентский договор № 1 от 01.07.2025 г.' |
* Проверяю отсутствие записей в колонке "Реализация услуг"
И в таблице "ДанныеОРеализациях" у поля с именем "ДанныеОРеализацияхРеазизацияУслуг" я жду значения "" в течение 10 секунд
И я нажимаю на кнопку с именем 'СоздатьАктыРеализацииУслуг'
* Проверяю появление новых записей в колонке "Реализация услуг"
И в таблице "ДанныеОРеализациях" у поля с именем "ДанныеОРеализацияхРеазизацияУслуг" я жду значения "" в течение 10 секунд
