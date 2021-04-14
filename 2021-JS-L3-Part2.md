#### Performance
##### topics:

###### Critical Rendering Path (how browser renders page);

Действия браузера для первоначальной отрисовки страницы. Подробней: выкачивание html, зависимых ресурсов (css, js блокирующие), построение DOM, CSSOM, парсинг JS, перестроение DOM, если нужно; построение layout (расположение элементов) и paint (собственно отрисовка).

Как бороться: 
- критичные стили inline; 
- js неблокирующий; async defer? 
- картинки - спрайты, маленькие размеры; 
- минификация, 
- конкатенация,
- обфусцирование; 
- lazy loading,
- preloading.
- В http2 можно использовать server push;
- service workers для кеширования; 
- tree shaking;
-  SSR or app shell
- differential loading - браузер решает, грузить модуль новый или старый в зависимости от поддержки. В новых es6 без полифилов, оптимизированный код, более безопасный и более быстрый. script tag has a type="module" or nomodule attribute. 
- Минификация картинок.
- CDN? CDN — сокращение от content delivery network, то есть “сеть доставки контента”. Чаще всего это множество серверов с специализированным ПО, которые ускоряют доставку (“отдачу”) контента конечному пользователю. Сервера расположены по всему миру таким образом, чтобы время ответа посетителям сайта было минимальным.
- AWS?

Improve loading performance and CRP (lazy loading, priority of the sources, gzip, minification/uglification);
Network optimizations (images, gzipping, bundling, etc.);
Service workers;
Improving user perception with layout placeholders, async/defer for not blocking the browser;
HTTP how web browsers load a web resources. lazy loading and resource pre-loading;

High performant animations, repaint/reflow, layout thrashing;

######  RAIL Model. Animation (fps), Click Response time, etc.;
RAIL: resonse, animation, idle, load - описывает ожидания пользователя от поведения страницы.
- respone: 100 ms на отклик, 50ms на обработку кода. Если медленнее - использовать web workers.
- animation - 60fps.
- idle - поток должен быть свободен, чтобы принимать действия от пользователя.
- load - отслеживать загрузку страницы, в т.ч. на медленных популярных девайсах.

###### PRPL pattern:
https://web.dev/apply-instant-loading-with-prpl/
Push (or preload) the most important resources. (первыми загружать критические ассеты)
Render the initial route as soon as possible.
Pre-cache remaining assets.
Lazy load other routes and non-critical assets.

Web workers;

###### Performance measurement and profiling (Chrome Dev Tools, Lighthouse, PageSpeed);

CPU bound operations optimizations;

###### Memory leaks detection;
profiling in dev tools (memory).
garbage collector; 
algorythm - mark and sweep? 
counts number of links and if there are none - clears;

###### perceived performance
перфоманс, как воспринимает это пользователь
- loaders, spinners, etc
- repaint instead of reflow (change element appearence instead of delete & insert element)
- optimistic updates
- preload
- app shell
- minify layout shift (подёргивание приложения)

###### V8 hidden classes and inline caching techniques;
memoization - cashing of functions
...
another?

How Event Loop works, microtasks.
 
###### Materials to study:

что означают аббревиатуры TTFB, FCP, FMP, TTI, SI и зачем нам это:
- https://www.youtube.com/watch?v=l36z3il629s&t=1050s&ab_channel=FrontSpot
- https://web.dev/apply-instant-loading-with-prpl/
- priority hints? https://developers.google.com/web/updates/2019/02/priority-hints
- critical rendering path https://habr.com/ru/company/hh/blog/513940/

##### Technology comprasion 
1.	SPA vs MPA pros/cons; (single page vs multi page) https://merehead.com/ru/blog/single-page-application-vs-multi-page-application/ (+link in JS conpetentency center)
2.	SSR vs CSR pros/cons; (server side rendering vs client side rendering) (+link in JS conpetentency center)
3.	progressive enhancement и graceful degradation (mobile first, desktop first).
5.	Micro-frontends, monorepos;	https://dou.ua/lenta/articles/micro-frontend/; https://martinfowler.com/articles/micro-frontends.html; https://www.toptal.com/front-end/guide-to-monorepos
6.	PWA (features list briefly); (progressive web application) https://www.altexsoft.com/blog/engineering/progressive-web-apps/; https://web.dev/what-are-pwas/
7.	CSS methodologies: BEM, OOCSS, SMACSS, Atomic CSS, CSS-in-JS, CSS modules; https://www.valoremreply.com/post/5_css_methodologies/; https://2020.stateofcss.com/en-US/technologies/methodologies/
8.	Angular vs React vs etc how to choose next project framework? https://code.tutsplus.com/tutorials/15-important-considerations-for-choosing-a-web-dev-framework--net-8035
(+link in JS conpetentency center)
	Community, github stars, repos, forks, components;
	Documentation;
	Support, new versions;
	Popularity trends (npm, google, stackoverflow);
	Learning curve;
	Features out of the box;
	Scalable for big teams;
	Versions backward compatibility;
	Native/mobile apps support?
	Bundle size;
	Flexible/opinionated in project structure/configuration;
	Ease of integration to existing apps (micro frontends-friendliness);
	Production case studies;
	Team background / level of knowledge;
	SSR support.
! говорить с точки зрения бизнеса, его потребностей. А не характеристик фреймворка, своих хотелок и т.д.)
1) Возможность поддерживать после релиза - есть ли у заказчика какие-то разработчики, лицензии и т.д.
1) Not functional requirements - speed (performance, package size), security, license, stability, reliability, accessibility
3) cost of professionals
4) какие фичи нужны - ssr, pwa, etc
9. E2E Solutions


этапы старта проекта: presale,discovery (тут solution architectors, delivery managers, sometimes TL - текущее состояние команды? time to market? есть ли специфические NFR?)
есть ли какая-то заинтересованность наша? Может быть у нас уже есть готовая команда?

NodeJs + AWS. Говорят перспективная связка, много интересных проектов


Clean Architecture подход - отход от зависимости от фреймворков. Бизнес логика отдельно, репрезентация отдельно
functional requirements

#### Angular Deep Dive

1. DI Tree https://indepth.dev/posts/1261/what-you-always-wanted-to-know-about-angular-dependency-injection-tree
2. Change detection https://indepth.dev/posts/1058/a-gentle-introduction-into-change-detection-in-angular, https://indepth.dev/posts/1064/what-every-front-end-developer-should-know-about-change-detection-in-angular-and-react
3. Ivy https://medium.com/angular-in-depth/ivy-engine-in-angular-first-in-depth-look-at-compilation-runtime-and-change-detection-876751edd9fd
4. 


#### Node JS Architecture
1. Scaling cube: горизонтальное (добавление реплик),  разделение по функционалу (разные микросервисы занимаются разным), скейлинг данных (шардирование - разбиение данных на куски, реплика - создание клонов DB, зональное шардирование (что-то связанное с регионами)). Ещё наращивание ресурсов
2. Не надо оптимизировать то, что работает! Оптимизация только тогда, когда что-то начинает проседать
3. Кеширование

#### Architecture common
Separation of concers.

Архитектура - организация системы. Элементы системы - разного уровня дробления, от функций, модулей, микросервисов до клиент/сервера/данных. Связь - API, интерфейс, контракт.

##### Хорошая архитектура, критерий:
Когезия (схожесть элементов внутри модуля системы). Должна быть высокой.
Коуплинг (взаимосвязь модулей системы между собой). Должен быть низким

Проектирование программного обеспечения - создание архитектуры системы. 
Проектирование vs программирование - разные уровни абстракции. Проектировщик думает о потребностях заказчика.

Анализ - что делаем. Проектирование - как делаем. 
Анализ включает в себя оценку рисков.

Ошибки на этапе проектирования стоят очень-очень дорого.

#### NFR and FR
Функциональные требования обязательны. Это ЧТО должна делать система (и что НЕ должна). Определяются заказчиком и пользователем.
User story, use case.
Нефункциональные требования "а-ля" необязательны.
NFR - устаревающий термит. Теперь больше используются "атрибуты качества" и "ограничения бизнеса". 
Первое - выбор технологии, доступность системы, производительности - скорости, безопасности, масштабирование, стабильность, поддерживаемость (сопровождение) и т.д.
Второе - срок старта, бюджет, участие/неучастие людей, лицензирование

Треугольник - бюджет, время, качество. Хорошие команды могут 2. Похуже - 1. 3 не может никто

#### Архитектурные подходы
часто спрашивают на ассесмете!
всегда нужно исходить из разумных пределов. не быть фанатиком. Помнить о том, зачем это применяют (уменьшить связность).

- SOLID
- separation of conserns 

S - single responsibility (Избегание антипаттерна God Object)

L - lease knowledge (закон Деметры) - каждый отряд должен иметь представление только о тех отрядах, с которыми он взаимодействует. Каждый юнит должен общаться только с друзьями и не общаться с незнакомцами.	

- DRY - do not repeat yourself.
Но можно отступить, если это требование безопасность (провека на клиенте и сервере). Если следование DRY создаёт "золотой молоток, которым невозможно пользоваться" - слишком много абстракций или слишком сильное дробление.

- KISS - Keep It Short and Simple.
Системы работают лучше, если они простые.
Подводный камень - время. Невозможно сделать сразу хорошо. Сначала делают хоть как-то, а потом делают систему простой.

- YAGNI - you ain't gonna need it
не нужно тратить время на функционал, который "возможно в будущем понадобится" и закладывать это при разработке, если это потребует дополнительное время.

- Композиция или Наследлование - что лучше?
Каждый инструмент нужен для решения своих задач.
Реакт рекомендует композицию - значит использовать её. В DOM - наследование, потому что оно там оправдано.
Наследование - "является". Композиция - "имеет". 
Композиция - это частный случай агрегации, когда элемент не существует вне класса-содержателя.

#### Паттерны
На ассесменте спросят: что используется на проекте? Или что можно было бы использовать? Паттерны, которые стали антипаттернами?
"Можно" рассказывать о том, что знаешь)) важная хорошая теоретическая база


### Code quality - very important!

Reason - maintanability, readability, stability.

- Review, tests, code coverage (test), lint. Sonar Qube.
- Quality gates (command should talk and decide, also they can come from business).
- Technical debt (intentional and unintentional).
- Metrics ? Cyclomatix complexity, etc. 

Testing pyramide:

UAT
manual tests

              ---e2e tests---
      --------integration tests--------
-----------------unit tests-----------------

Тех, которых ниже, должно быть больше. Юнит тесты дешевле: стоимость управления сильно дешевле, стоимость разработки (делают разработчки сразу), они быстро выполняются, стоимость энвайронмета тоже ниже


Как понять, что тесты хороши: 

-unit tets: FirST - fast (быстрый), independent (изолирует функциональность), repetable (одинаковый результат при одинаковом запуске), self-validating (выдаёт результат, сам говорит он упал или нет), timely (пишется До написания кода); AAA (triple A pattern): arragnge, act, assert

"unit tests are the best code documentation" ?

#### Documentation - спросят на ассесменте
- стоимость документации
- readme, sandbox (brandbook), jsDoc,
- страница на kb с описанием фич, архитектуры

#### tdd vs bdd
https://medium.com/@lucyhackwrench/%D1%87%D1%82%D0%BE-%D1%82%D0%B0%D0%BA%D0%BE%D0%B5-tdd-%D0%B8-bdd-%D0%BD%D0%B0-%D0%BF%D0%B0%D0%BB%D1%8C%D1%86%D0%B0%D1%85-%D0%B8-%D1%87%D1%82%D0%BE-%D0%B4%D0%BE%D0%BB%D0%B6%D0%B5%D0%BD-%D0%B7%D0%BD%D0%B0%D1%82%D1%8C-%D0%BE-%D0%BD%D0%B8%D1%85-%D1%84%D1%80%D0%BE%D0%BD%D1%82%D0%B5%D0%BD%D0%B4%D0%B5%D1%80-701a10e06bb9#:~:text=TDD%20(Test%20Driven%20Development)%20%E2%80%94,%D0%B8%D1%85%20%D1%80%D0%B5%D0%B0%D0%BB%D0%B8%D0%B7%D0%B0%D1%86%D0%B8%D0%B8%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D1%83%D1%8E%D1%82%D1%81%D1%8F%20%D1%80%D0%B0%D0%B7%D0%BD%D1%8B%D0%B5%20%D0%B8%D0%BD%D1%81%D1%82%D1%80%D1%83%D0%BC%D0%B5%D0%BD%D1%82%D1%8B.
