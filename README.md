# ProductAppForSystems
Простая программа выполняющая все CRUD операции + поиск по названию продукта.

Для корректной работы программы необходимо:
1.Установить DataBase
2.Создать в DB таблицу
3.Изменить настройки в application.properties для подключения к вашей DB:

  spring.datasource.url=jdbc:postgresql://localhost/product_app_db                            # /product_app_db  -название вашей базы данных
  spring.datasource.username=postgres                                                           # /postgres -имя пользователя бд
  spring.datasource.password=root                                                              # /root -пароль для  бд 
  
  
  4. Запустить программу в классе Application
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Действия в приложении:
1.При переходе на http://localhost:8080 откроется главная страница.
2.Выбрать необходимую операцию нажав соответствующую кнопку.
3.После добавления двух продуктов(можно и одног, но какой в этом смысл) можно искать их по названию в соответствующем поле ввода
4.При нажатии на кнопку "удалить" сразу удаляется объект.
5.При нажатии на "изменить" переходим на страницу редактирования объекта.
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


Используемые технологии:
-Java
-Spring Framework
-JPA
-База данных — PostgresSQL
-Шаблонизатор -Freemarker.
-Оформление Bootstrap
