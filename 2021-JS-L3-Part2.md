#### Performance
##### topics:

###### Critical Rendering Path (how browser renders page);
https://habr.com/ru/company/hh/blog/513940/
Действия браузера для первоначальной отрисовки страницы. Подробней: выкачивание html, зависимых ресурсов (css, js блокирующие), построение DOM, CSSOM, парсинг JS, перестроение DOM, если нужно; построение layout (расположение элементов) и paint (собственно отрисовка).

Как бороться: критичные стили inline; js неблокирующий; картинки - спрайты, маленькие размеры; минификация, конкатенация, обфусцирование; lazy loading, preloading. В http2 можно использовать server push; service workers для кеширования; tree shaking; SSR or app shell
differential loading - браузер решает, грузить модуль новый или старый в зависимости от поддержки. В новых es6 без полифилов, оптимизированный код, более безопасный и более быстрый. script tag has a type="module" or nomodule attribute. 

priority hints? https://developers.google.com/web/updates/2019/02/priority-hints
async defer? 

Improve loading performance and CRP (lazy loading, priority of the sources, gzip, minification/uglification);
Network optimizations (images, gzipping, bundling, etc.);
High performant animations, repaint/reflow, layout thrashing;
Service workers;

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


что означают аббревиатуры TTFB, FCP, FMP, TTI, SI и зачем нам это:
https://www.youtube.com/watch?v=l36z3il629s&t=1050s&ab_channel=FrontSpot

Web workers;


Performance measurement and profiling (Chrome Dev Tools, Lighthouse, PageSpeed);


Improving user perception with layout placeholders, async/defer for not blocking the browser;

HTTP how web browsers load a web resources. lazy loading and resource pre-loading;

CPU bound operations optimizations;

Memory leaks detection;

V8 hidden classes and inline caching techniques;

How Event Loop works, microtasks.

 
###### Materials to study:
 
Rail model

Perfomance checklist

Perfomance optimization

Critical rendering path by Ilya Grigorik

Philip Roberts: What the heck is the event loop anyway? | JSConf EU

Further Adventures of the Event Loop - Erin Zimmer - JSConf EU 2018

Jake Archibald - event loop

Tasks, Microtasks, Queues and Schedules

Layout Thrashing

Vitaliy Fridman – Workshop (part 1). New adventures in front-end (2021)

Vitaliy Fridman – Workshop (part 2). New adventures in front-end (2021)

How JavaScript works: inside the V8 engine

Service Workers

Service Workers API
