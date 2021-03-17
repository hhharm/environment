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
progressive enhancement и graceful degradation (mobile first, desktop first).
1.	SPA vs MPA pros/cons; (single page vs multi page)
2.	SSR vs CSR pros/cons; (server side rendering vs client side rendering)
3.	Micro-frontends, monorepos;
4.	PWA (features list briefly); (progressive web application)
5.	CSS methodologies: BEM, OOCSS, SMACSS, Atomic CSS, CSS-in-JS, CSS modules;
6.	Angular vs React vs etc how to choose next project framework?
7.	Community, github stars, repos, forks, components;
8.	Documentation;
9.	Support, new versions;
10.	Popularity trends (npm, google, stackoverflow);
11.	Learning curve;
12.	Features out of the box;
13.	Scalable for big teams;
14.	Versions backward compatibility;
15.	Native/mobile apps support?
16.	Bundle size;
17.	Flexible/opinionated in project structure/configuration;
18.	Ease of integration to existing apps (micro frontends-friendliness);
19.	Production case studies;
20.	Team background / level of knowledge;
21.	SSR support.

