*Всё обсуждение в контексте JS*
****************************************************************************************************************************************************
# ДРУГОЕ
****************************************************************************************************************************************************

- Refactoring - https://refactoring.guru/
- SOLID - https://ota-solid.now.sh/
- Design patterns - https://refactoring.guru/ru/design-patterns
- Anti-patterns - https://sourcemaking.com/antipatterns
- Testing - https://github.com/goldbergyoni/javascript-testing-best-practices
- Clean code - https://github.com/labs42io/clean-code-typescript
- Вебинар о core js для собеседования - https://www.youtube.com/watch?v=H5wnkRJBfA8

****************************************************************************************************************************************************
# ПАРАДИГМЫ ПРОГРАММИРОВАНИЯ
****************************************************************************************************************************************************

##### ООП

###### Инкапсуляция:

1) Привязывание методов и данных; изоляция методов и данных от внешнего мира; security (безопасность)
2) В 2021 будет private в классах, под капотом сделан через weak map
3) get, set
4) инкапсуляция модулями
5) инкапсуляция через замыкание. Области видимости

###### Наследование:

1) Под капотом прототипы
2) Цепочка прототипов заканчивается на null (Object ссылается на null)
у инстанса класса есть proto, оно ссылается на consturtor => function prototype => Object proto => null
3) Прототипное наследование гибче - можно у уже созданного инстанса подменить proto
4) new - записать в конструктор прототайп
5) The __proto__ property is a bit outdated. It exists for historical reasons, modern JavaScript suggests that we should use Object.getPrototypeOf/Object.setPrototypeOf functions instead that get/set the prototype.
6) лучше не перезаписывать прототайпы, а расширять их
7) gorilla banana problem - хочешь банан, а получаешь в придачу гориллу. 
AP: прочитать про проблему и какими паттернами её можно решить

###### Полиморфизм:

1) Ad hoc полиморфизм (a-la перенагрузка - выбор реализации в зависимости от типа параметров). Оно есть в TS! И последняя перегрузка должна содержать все возможные параметры, иначе будет ошибка компиляции.
В JS можно сделать, но придётся вручную разруливать
2) Параметрический полиморфизм - реализация одинаковая вне зависимости от типа параметров
Переопределение методов дочерних классов (динамический)
shadowing

vs java/c# ?

###### Абстракция:
1) отражение реальной сущности в набор методов и свойств
2) абстрактный класс vs интерфейс - в интерфейсе все методы абстрактные, в абстрактном классе можно что-то реализовать.
3) интерфейс компилируется ни во что, абстрактный класс компилируется в класс
4) нельзя создать инстанс абстрактного класса
5) инкапсуляция - частный случай абстракции
###### Ссылки
- https://www.youtube.com/watch?v=t8zwdpkSRWs
- https://www.yegor256.com/tag/oop.html
- https://medium.com/free-code-camp/object-oriented-programming-concepts-21bb035f7260

##### Императивное программирование vs декларативное(стили)
Императивное - как делать. Инструкции, строчка за строчкой. Циклы, ветвления.
Декларативное - что именно делать. Операции вынесены в отдельные функции.
Яркий пример декларативного -  SQL.
ООП ближе к императивному, функциональное программирование ближе к декларативному

Angular - директивы это декларативное программирование
React - больше декларативное программирование
но всё равно и то, и то используется

##### Функциональное программирование
###### Чистые функции
При одинаковом input всегда один output, нет side effects. Нет мутирования входных параметров и нет изменения/использования внешних состояний. 
Возможно мемоизирование (memoisation), т.е. кеширование результатов.
Можно подменить результат вычисления на вызов функции.

###### immutable 
не меняет внутренние значения. При передачи в функцию можно создать клон.
redux - пишет новый state на каждое изменение.
typescript - readonly.
+ предсказуемость
- использование памяти

###### функция первого класса 
функция, с которой можно работать как с данными (заменять данные на её вызов)

###### функции высшего порядка
функции, которые оперируют функциями и возвращают функции. Каррирование

###### рекурсия 
вместо циклов в FP, т.к. не изменяется состояние.
###### ссылки
- https://www.youtube.com/watch?v=FDGqNxJnbbQ
- https://medium.com/@cscalfani/goodbye-object-oriented-programming-a59cda4c0e53
- https://medium.com/javascript-scene/master-the-javascript-interview-what-is-functional-programming-7f218c68b3a0
- https://medium.com/better-programming/object-oriented-programming-the-trillion-dollar-disaster-92a4b666c7c7
- https://medium.com/@olxc/switching-from-oop-to-functional-programming-4187698d4d3
- https://www.youtube.com/watch?v=srQt1NAHYC0

##### Функциональное программирование vs OOP
- в ооп хранится внутреннее состояние, а в функциональном программировании нет.
- в ооп данные и манипулирование ими хранится в одной сущности
- в функциональном программировании используется пайп над данными (данные с BE => ... => ... => ... => готовая вёрстка)

функциональное
+ не нужно тратить время на продумывание абстракций

OOP
+ есть наследование
+ легче порог входа

- очень легко ошибиться в проектировании системы классов. Gorilla with bananas, overengineering. Сложно разделить ответственность.

##### Реактивное программирование:
событие => реакция
при изменении состояния пересчитываются все зависимые значения
stream
observable
subject
"декларативный подход работы с асинхронными данными, распределёнными по времени"

RxJs . Паттерн Observer. MobX
##### Useful links: 
- https://github.com/bmarvinb/js-senior-grow/blob/master/programming-paradigms/qa.md
- из https://github.com/bmarvinb/js-senior-grow/blob/master/programming-paradigms/links.md
General
https://habr.com/ru/post/276593/
https://habr.com/ru/company/mailru/blog/267277/
https://habr.com/ru/post/479238/
https://habr.com/ru/post/218603/
https://habr.com/ru/post/144611/
https://habr.com/ru/post/218345/
https://habr.com/ru/post/117365/
https://habr.com/ru/post/130850/
https://www.youtube.com/watch?v=fsVL_xrYO0w
https://sourcemaking.com/antipatterns
https://refactoring.guru/refactoring
FPR
https://github.com/kriskowal/gtor
https://gist.github.com/staltz/868e7e9bc2a7b8c1f754
https://medium.com/@benlesh/learning-observable-by-building-observable-d5da57405d87
https://blog.redelastic.com/what-is-reactive-programming-bc9fa7f4a7fc
https://www.youtube.com/watch?v=XKfhGntZROQ
GoF & GRASP
https://habr.com/ru/post/38323/
https://refactoring.guru/design-patterns
Guide to FP
https://github.com/MostlyAdequate/mostly-adequate-guide
Composing Software
https://medium.com/javascript-scene/composing-software-the-book-f31c77fc3ddc
OOP Principles
https://www.indeed.com/career-advice/career-development/what-is-object-oriented-programming
DI
https://www.freecodecamp.org/news/a-quick-intro-to-dependency-injection-what-it-is-and-when-to-use-it-7578c84fa88f/
https://martinfowler.com/articles/injection.html
FP in JS
https://medium.com/javascript-scene/master-the-javascript-interview-what-is-functional-programming-7f218c68b3a0
https://eloquentjavascript.net/05_higher_order.html
https://stackoverflow.com/questions/5250733/what-are-the-advantages-and-disadvantages-of-recursion
RP in JS
https://habr.com/ru/post/427467/
https://gist.github.com/staltz/868e7e9bc2a7b8c1f754

****************************************************************************************************************************************************
# КОММУНИКАЦИОННЫЕ ПРОТОКОЛЫ
****************************************************************************************************************************************************
#### Questions
1. HTTP vs HTTP 2.0 advantages;
2.	WebSockets vs Polling;
3.	What is REST? Maturity levels;
4.	REST vs GraphQL pros/cons?
5.	HTTPS purpose;
6.	API Documentation (Swagger, Open API, Postman).
Advanced, communication approaches (recommended to read):
1.	IPC, RPC (Interprocess communication - Win/*nix sockets;
2.	JSON-RPC;
1.	gRPC (protobuf);
2.	pub/sub, MOM.

#### Materials to study:
•	Series of articles about REST https://habr.com/ru/post/483202/
•	Richardson Maturity Model https://habr.com/ru/post/319984/
•	Open API https://www.youtube.com/watch?v=NnnvOPdstzg
•	REST vs GraphQL, GraphQL server https://www.youtube.com/watch?v=NnnvOPdstzg
•	GraphQL client https://www.youtube.com/watch?v=VdoPraj0QqU
•	Long polling, websockets https://medium.com/system-design-blog/long-polling-vs-websockets-vs-server-sent-events-c43ba96df7c1
•	TCP vs UDP https://www.diffen.com/difference/TCP_vs_UDP
•	TSL https://martinfowler.com/articles/consumerDrivenContracts.html
•	Consumer Driven Contracts https://martinfowler.com/articles/consumerDrivenContracts.html

#### Recommended to read:

•	Unix Sockets https://timdav.is/2019/12/01/UNIX-Domain-Sockets-vs-TCP-Sockets/
•	Interprocess communication https://medium.com/js-imaginea/clustering-inter-process-communication-ipc-in-node-js-748f981214e9
•	JSON-RPC 2.0 Specification https://www.jsonrpc.org/specification
•	REST? https://habr.com/ru/post/441854/
•	Amazon SQS vs RabbitMQ https://habr.com/ru/company/yandex/blog/484068/
•	gRPC https://habr.com/ru/company/yandex/blog/484068/
•	gRPC https://habr.com/ru/company/infopulse/blog/265805/


## Сетевое взаимодействие

#### TCP vs UDP

вес заголовка
в TCP гарантия доставки, порядка
в TCP устанавливается соединение, в UDP - нет

в TCP есть flow control?? Размер окна
Есть протокол поверх UDP, который имитирует поведение TCP: Quic
https://habr.com/ru/company/infopulse/blog/315172/

#### HTTP протокол
смысл - передача текста. Есть заголовок, метод, опционально body

http 1 - при отправке 1 запроса нельзя отправить доп запрос, пока не пришёл ответ. вместо этого устанавливалось много соединений (6 сокетов)
http 2 - всегда поверх tls. И все запросы одновременно

uri, заголовок, request, статус

заголовки options, get, put, delete, post, patch (обновление)

##### разница между get и post
get: одни данные - один результат (идемпотентность)
get кешируются, post нет
в get тела нет (хотя по спецификации можно добавить), в post есть тело.
в get параметры как query параметры или внутри uri

Разница: https://stackoverflow.com/questions/4526273/what-does-enctype-multipart-form-data-mean
	application/x-www-form-urlencoded
	multipart/form-data
	text/plain


коды ошибок (посмотреть ещё): 
20X - OK
204 - no content

40Х - ошибки фронтенда
400 - bad params
401 not authorised
404 not found
409 conflict

30X
301 - redirect
302 - no new content

50X
500 - что-то на сервере пошло не так
504 - timeout exceeded

есть nginx, который отлавливает ошибки и подменяет красивым ответом

#### http vs htpps
Поверх tsl протокола. Данные зашифрованны, данные никто не может перехватить.
Можно защититься от атаки man in the middle (злоумышленник перехватывает запрос и отправляет подменённую инфу). Есть сертификаты, официально лицензируемые.
Есть публичный токен, есть приватный токен, при установке соединения они обмениваются публичными и получают токен, которые они знают только двое.
80 порт http, 4003 https
SEO любит https
Сертификаты let's encript. Сертификаты - сервера, клиента. Разные степени надёжности и разная цена. Ничего неизвестно мне об этом)
refenitive?
self-signed certificate?

#### CORS
cross origin resource sharing
политика, какие ресурсы могут обмениваться между клиент и сервером. Перед взаимодействием делается perflight request, options, какие ресурсы можно забрать.
когда клиент с другого ресурса пытается обратиться к серверу, сервер смотрит на свою настройку cross origin
в хедере можно корс политику на * и тогда она не будет применяться

JSONP?

#### REST
Прочитать:
REST - архитектура веб сервисов. 6 критериев - 
1) клиент - сервер (между ними коммуникация)
2) stateless (сервер не хранит информацию о клиенте, ничего не теряем, если сеть оборвётся)
3) cash (каждый реквест должен содержать инфу кешируется он или нет)
4) ограничения на uri
5) layered system (в rest допускается зависимость одного сервиса от другого, но клиенту не должно быть об этом известно)
6) не запрещается выгрузить код для клиента

#####
Уровни maturity:
0) Присутствует только 1 uri и 1 http method
1) Несколько uri, 1 метод
2) Несколько uri и на каждом из них может быть несколько методов
3) Используются  хатеос?? хедлес? - ресурсы сами присылают ссылки, от чего они ещё зависят.

Модель Ричердсона

Хорошая практика говорить - "есть такие штуки, могу перечислить, если нужно"

#### Rest vs soap
soap - простыни xml с контрактами
rest - можно без контрактов и более читаемо

soap - протокол, rest - архитектура

#### GraphQL vs REST
graphQL - можно со стороны FE писать в запросе, какие нужны поля. Данных будет достаточно, не будет лишних. Более гибко и не нужно писать дополнительные эндпоинты

graphQL - не обязательно какой-то протокол. Может быть HTTP, может быть webSocket

apollo - коммьюнити, relay - facebook. В apollo redux

+ graphQL позволяет меньше данных грузить. Если у нас пользователь может кастомизировать что показывать, а что нет, то graphQL отличный

минус graphQL - технически сложно поддерживать. Ограничения, перехватчики. Стейт прописывать полностью. FE нужно изучить query language и делать изменения, когда надо.

gitlab переходит на graphQL.
rest лучше, когда нужно быть уверенным в солюшене (robust). Возможно потому, что нагрузка меньше -> трафика меньше -> меньше затраты

#### poolling, web socket

poolling - short poolling, long poolling - отслеживание соединений.
short - запрос на изменение каждый какой-то короткий промежуток времени.
long - запрос на сервере висит, пока там что-то не изменится. Минус - нет гарантии порядка доставки сообщений. Long лучше short

web socket - протокол, по которому мы можем установить соединение между сервером и клиентом. Отправлять может кто угодно. Две передачи могут висеть одновременно (полнодуплексная передача). Важно - при разрыве коннекшена автоматически не возобновляются


клиент слушает сервер. Есть lifecicle - onCreateConnection, onError, onClose

какие есть библиотеки для web sockets? есть фолбек long poolling, авто возобновление коннекшена. Унификация использования вебсокетов, чтобы всем было понятно. Так удобнее, быстрее скорость разработки

#### документация
swagger
openAPI
postman (коллекции)
doc


++ отслеживание изменения контрактов
++ адаптация
++ тестирование быстрее
++ независимая разработка FE и BE
++ можно отдать наружу API
++ можно не отвлекать разработчиков
++ есть версионность API

### SECURITY BASICS
1.	Man-in-the-Middle (MITM) Attacks;
2.	OWASP Top 10: https://sucuri.net/guides/owasp-top-10-security-vulnerabilities-2020/
o	Injection;
o	Broken Authentication;
o	Sensitive data exposure;
o	XML External Entities (XXE);
o	Broken Access control;
o	Security misconfigurations;
o	Cross-Site Scripting (XSS) and how to protect from it;
o	Insecure Deserialization;
o	Using Components with known vulnerabilities;
o	Insufficient logging and monitoring.
3.	Explain what is CORS and how it works?
4.	Explain what is CSP (Content Security Policy)?
5.	Auth Types that you know (JWT, Cookies, Http-only Cookies, OAuth, Basic,…).
https://www.ssllabs.com/
https://www.hackedu.com/blog/same-origin-policy-and-cross-origin-resource-sharing-cors
https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS
https://www.youtube.com/watch?v=2PPSXonhIck
https://habr.com/en/post/499342/
https://www.netsparker.com/blog/web-security/http-security-headers/
https://observatory.mozilla.org/analyze/klin.elmall50.ru

1) Безопасность, зачем? - защищаться от атак, от штрафов от организаций, репутационные риски
2) Когда? на этапе планирования архитектуры, выбора библиотек
3) Зависимости: смотреть на аудиты библиотек, фреймворков. 
4) Если обнаружена дыра: действовать по ситуации
5) Как проверять? Внешние аудиты, внутренние проверки, npm показывает issue. Утилиты для проверки безопасности: Nessus, sonar cube, npm audit (для зависимостей или если запушим свой код как пакет в npm - то и для проверки нас). Ещё есть blackduck. Veracode
6) OWASP (open web application security project) - открытый проект, который собирает информацию об уязвимостях в web app

##### универсальный ответ - нужно действовать по ситуации. Лучше всего перечислять ситуации, которые знаешь сам.
##### на ассесменте бывает много пространных вопросов

401 - unauthorized
403 - forbidden

1. Атака посредника, или атака «человек посередине» (англ. Man in the middle (MITM)) — вид атаки в криптографии и компьютерной безопасности, когда злоумышленник тайно ретранслирует и при необходимости изменяет связь между двумя сторонами, которые считают, что они непосредственно общаются друг с другом. Является методом компрометации канала связи, при котором взломщик, подключившись к каналу между контрагентами, осуществляет вмешательство в протокол передачи, удаляя или искажая информацию.
2. 10 основных уязвимостей OWASP 2020 года:
https://blog.themarfa.name/chto-takoie-owasp-top-10-i-kak-ispolzovat-ukazannyie-riski-i-uiazvimosti/
3. CORS: https://blog.mozilla.org/services/2013/02/04/implementing-cross-origin-resource-sharing-cors-for-cornice/
4. Политика защиты контента (CSP) — это дополнительный уровень безопасности, который помогает обнаружить и смягчить некоторые виды атак, в том числе межсайтовый скриптинг (XSS) и инъекцию данных.Для того чтобы включить CSP, необходимо настроить сервер так, чтобы в ответах он использовал HTTP-заголовок Content-Security-Policy. Реализован браузером. Позволяет настроить, кто и что может запрашивать. Основная цель создания CSP заключается в устранении XSS атак и сборе данных об их попытках.В дополнение к ограничению количества доверенных доменов, с которых разрешается получать контент, можно также ограничить список используемых протоколов; 
5. Аутентификация — процедура проверки подлинности, например проверка подлинности пользователя путем сравнения введенного им пароля с паролем, сохраненным в базе данных. Авторизация — предоставление определенному лицу или группе лиц прав на выполнение определенных действий.

The OAuth 2.0 Authorization Framework.
С помощью OAuth 2.0 пользователь разрешает определенному сайту получить свои закрытые данные из соцсетей, но без передачи сайту своих логинов / паролей.
https://habr.com/ru/post/491116/

OpenID Connect, аутентификация  — является надстройкой над OAuth 2.0 — добавляет сведения о логине и профиле пользователя (identity), добавляет возможность динамической регистрации и обнаружения сервисов “service discovery”. Это дает возможность строить системы SSO (Single Sign-On), в которых используется один логин для многих не связанных между собой сервисов.

code flow:
identity server перенаправляет на authorization server, там юзер авторизируется. Возвращает "code" на identity server. Он запрашивает сервер с ресурсами

#### Angular security
Guards - на роуты, на подгрузку каких-то lazy modules, sanitizing html (by default) или можно отключить через byPassSecurity, interceptors (добавить хедеры какие-нибудь, например), 

Отображение - permission based vs role based, удобнее всего mixed.
Можно написать свою структурную директиву на основе ngIf, например isAuthrized. Есть уже готовая вещь "ngxPermission" - готовая библиотека хорошая.

Security - functional / non functional: it depends. Базовые вещи - non functional, а какие-то high level от заказчика могут быть и functional.

###### при вырастании как разработчика, важнее становятся не знания, а умения их получать, что-то предполагать, выдвигать гипотезы, думать
