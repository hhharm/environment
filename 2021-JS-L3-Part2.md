#### Performance
###### topics:

####### Critical Rendering Path (how browser renders page);
https://habr.com/ru/company/hh/blog/513940/
Действия браузера для первоначальной отрисовки страницы. Подробней: выкачивание html, зависимых ресурсов (css, js блокирующие), построение DOM, CSSOM, парсинг JS, перестроение DOM, если нужно; построение layout (расположение элементов) и paint (собственно отрисовка).

Как бороться: критичные стили inline; js неблокирующий; картинки - спрайты, маленькие размеры; минификация, конкатенация, обфусцирование; lazy loading, preloading. В http2 можно использовать server push; service workers для кеширования; tree shaking; SSR or app shell
differential loading - браузер решает, грузить модуль новый или старый в зависимости от поддержки. В новых es6 без полифилов, оптимизированный код, более безопасный и более быстрый. script tag has a type="module" or nomodule attribute. 

priority hints? https://developers.google.com/web/updates/2019/02/priority-hints
async defer? 

####### High performant animations, repaint/reflow, layout thrashing;

Improve loading performance and CRP (lazy loading, priority of the sources, gzip, minification/uglification);

RAIL Model. Animation (fps), Click Response time, etc.;

PRPL pattern;

Performance measurement and profiling (Chrome Dev Tools, Lighthouse, PageSpeed);

Network optimizations (images, gzipping, bundling, etc.);

Improving user perception with layout placeholders, async/defer for not blocking the browser;

HTTP how web browsers load a web resources. lazy loading and resource pre-loading;

CPU bound operations optimizations;

Web workers;

Service workers;

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
