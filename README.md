# Ask-me clone
Wanna ask your girlfriend how many guys she had before you, but you don't know how? You are in the right place! In this wonderful application you can: ask questions, ask anonymous questions, answer on them. 

### Mechanics
You launch the app create your account, call your friends to join and ask each other any questions you scared to ask personally

### Photos

- start page
![изображение](https://user-images.githubusercontent.com/83035520/193454922-a6700e9e-130c-4931-abc4-ebf68d21287d.png)

- User page
![Снимок экрана от 2022-10-02 15-52-41](https://user-images.githubusercontent.com/83035520/193455042-15850bf8-4bea-4750-bffe-00fb6349fca0.png)

- Asking question
![Снимок экрана от 2022-10-02 15-53-02](https://user-images.githubusercontent.com/83035520/193455090-026557ec-54d5-46cc-b99b-984f9c0ec24d.png)

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
This is my first rails app that I created during first month of learning rails on the [good programmer course](https://goodprogrammer.ru/rails)

#### What have I learned during developing this app?
- What is rails
- Models, Migrations, ORM, CRUD
- Controllers, paths, REST
- Templates, ERB, route helpers
- Forms, layouts, assets pipeline
- Partials, flash, helpers
- Authentication, cookies, session, users
- Validations, callbacks, CRUD of users
- Associations, security, answers
- Logs, debugging, Deployment, Gravatar

## RUS

## Фильм на вечер

Вы хотите посмотреть фильм, но не знаете, какой именно? Вы находитесь в нужном месте! С помощью этого приложения вы можете легко выбрать кинокартину

### Механика
Вы запускаете приложение и выбираете директора, чей фильм вы хотите посмотреть.

### Чтобы начать выбирать фильм

- Вы должны иметь на используемом устройстве установленный ruby(версия 2.6 и выше. Гайд по установке - https://rubyrush.ru/steps/setup-ruby).
1) Скачайте все файлы в одну папку
2) Откройте командную строку
3) Откройте скаченную директорию в командной строке
4) Установите все гемы(библиотеки) используемые приложением, введя эти комманды
```
gem install bundler
bundle install
```
5. Запустите прилложение, введя это(находясь в директории приложения через командную строку)
```
bundle exec ruby main.rb
```

### P.s
Это простое консольное приложение, которое парсит фильмы с сайта и выдает их пользователю.
Я создал это приложение во время первого месяца изучения языка ruby на курсе [хорошего программиста](https://goodprogrammer.ru/rails)

#### Чему я научился во время разработки? 
- Работать с сетью
- Парсить сайты с помощью nokogiri
- Чуть лучше усвоил ООП




