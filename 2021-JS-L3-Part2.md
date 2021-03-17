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
