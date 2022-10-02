# Ask-me clone
Wanna ask your girlfriend how many guys she had before you, but you don't know how? You are in the right place! In this wonderful application you can: ask questions, ask anonymous questions, answer on them. 

### Mechanics
You launch the app create your account, call your friends to join and ask each other any questions you scared to ask personally

### Photos

- Start page
![изображение](https://user-images.githubusercontent.com/83035520/193454922-a6700e9e-130c-4931-abc4-ebf68d21287d.png)

- User page
![Снимок экрана от 2022-10-02 15-52-41](https://user-images.githubusercontent.com/83035520/193455042-15850bf8-4bea-4750-bffe-00fb6349fca0.png)

- Asking question
![Снимок экрана от 2022-10-02 15-53-02](https://user-images.githubusercontent.com/83035520/193455090-026557ec-54d5-46cc-b99b-984f9c0ec24d.png)

### Some features

- You can change theme color in user editing page
![color theme](https://user-images.githubusercontent.com/83035520/193455265-6e4de5b5-7e26-4f9f-b40f-f24e53ce8068.jpg)

- You can choose your avatar by uploading it to gravatar(How to do this - https://blog.hubspot.com/website/gravatar-use-wordpress). Just register with your gravatar email in ask.me clone

### To start

- You should have installed ruby(3.0.2) on your pc(how to do this - https://www.ruby-lang.org/en/documentation/installation/)
1. Download all files to single folder
2. Open CMD
3. Open program directory in CMD
4. Install all the gems (libraries) required by the application by entering these commands in CMD:
```
gem install bundler
bundle install
```
5. Run migrations
```
bundle exec rails db:migrate
```
6. Launch app by entering this(you are in program directory already)
```
bundle exec rails s
```
7. That's all. Now you can use it, just go to 'http://localhost:3000/'
### P.s
This is my first ruby on rails app that I created during first month of learning RoR on the [good programmer course](https://goodprogrammer.ru/rails)

#### What have I learned during developing this app?
- What is rails
- Models, Migrations, ORM, CRUD
- Controllers, paths, REST
- Templates, ERB, route helpers
- Forms, layouts, assets pipeline
- Partials, flash, helpers
- Authentication, cookies, session, users
- Validations, callbacks, CRUD of users
- Associations, security
- Logs, debugging, Deployment, Gravatar

## RUS

# Ask-me клон
Хочешь спросить свою девушку, сколько парней было у нее до тебя, но ты не знаешь как? Вы находитесь в нужном месте! В этом замечательном приложении вы можете: задавать вопросы, задавать анонимные вопросы, отвечать на них.

### Механика
Вы запускаете приложение, создаете свою учетную запись, зовете своих друзей присоединиться и задаете друг другу любые вопросы, которые боитесь задать лично

### Фотографии
- Стартовая страница
![изображение](https://user-images.githubusercontent.com/83035520/193454922-a6700e9e-130c-4931-abc4-ebf68d21287d.png)

- Страница пользователя
![Снимок экрана от 2022-10-02 15-52-41](https://user-images.githubusercontent.com/83035520/193455042-15850bf8-4bea-4750-bffe-00fb6349fca0.png)

- Задаём вопрос
![Снимок экрана от 2022-10-02 15-53-02](https://user-images.githubusercontent.com/83035520/193455090-026557ec-54d5-46cc-b99b-984f9c0ec24d.png)

### Интересные фичи
- Вы можете изменить цвет темы на странице редактирования пользователя
![color theme](https://user-images.githubusercontent.com/83035520/193455265-6e4de5b5-7e26-4f9f-b40f-f24e53ce8068.jpg)

- Вы можете выбрать свой аватар, загрузив его в gravatar(Как это сделать - [https://blog.hubspot.com/website/gravatar-use-wordpress](https://ktonanovenkogo.ru/wordpress/veb-obzor-vypusk-1.html) ). Просто зарегистрируйтесь со своей электронной почтой gravatar в ask.me клоне

### Как запустить
- Вы должны установить ruby(3.0.2) на свой компьютер (как это сделать - https://rubyrush.ru/steps/setup-ruby)
1. Скачайте все файлы в одну папку
2. Откройте командную строку
3. Откройте директорию приложения в командной строке
4. Установите все гемы(библиотеки) используемые приложением, введя эти комманды:
```
gem install bundler
bundle install
```
5. Прогоните миграции так:
```
bundle exec rails db:migrate
```
6. Запустите приложенеи введя это:
```
bundle exec rails s
```
7. Это всё, теперь вы можете использовать приложение, просто перейдя на эту ссылку 'http://localhost:3000/'
### P.s
Это мое первое ruby on rails приложение, которое я создал в течение первого месяца изучения RoR на [курсе хорошего программиста] (https://goodprogrammer.ru/rails )

#### Чему я научился во время разработки этого приложения?
- Что такое Ruby on Rails
- Модели, Миграции, ORM, CRUD
- Контроллеры, пути, REST
- Шаблоны, ERB, route helpers
- Формы, layouts, assets pipeline
- Partials, флэш, helpers
- Аутентификация, файлы cookie, сессия, пользователи
- Валидации, callbacks, CRUD пользователей
- Ассоциации, безопасность
- Логи, отладка, деплой, Gravatar




