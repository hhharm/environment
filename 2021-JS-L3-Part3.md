# GIT, CI
- CI/CD/CD https://www.atlassian.com/continuous-delivery/principles/continuous-integration-vs-delivery-vs-deployment
- Different release strategies: https://opensource.com/article/17/5/colorful-deployments, https://martinfowler.com/bliki/BlueGreenDeployment.html, https://docs.launchdarkly.com/guides/best-practices/deployment-strategies
 blue-green (switch between many to many), canary (кЭнори) (switch on small patch and to small group of people), rolling (swithc one pod by one, default stratagy)
 + recreation strategy (simple and cheap, but downtime), shadow
- Security testing https://habr.com/ru/company/alexhost/blog/535128/
 
 ### git workflows:
- https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow#:~:text=The%20overall%20flow%20of%20Gitflow,branch%20is%20created%20from%20master&text=When%20a%20feature%20is%20complete%20it%20is%20merged%20into%20the,branch%20is%20created%20from%20master
- https://www.atlassian.com/git/tutorials/comparing-workflows/forking-workflow
- https://www.atlassian.com/git/tutorials/comparing-workflows/feature-branch-workflow
- https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow
- https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow#:~:text=The%20overall%20flow%20of%20Gitflow,branch%20is%20created%20from%20master&text=When%20a%20feature%20is%20complete%20it%20is%20merged%20into%20the,branch%20is%20created%20from%20master
- https://www.perforce.com/blog/vcs/best-branching-strategies-high-velocity-development


veracode - vulnarability scan
sonar - different checks


### SDLC - изучить((
software development lifecycle.
Waterfall, V-model, rup https://habr.com/ru/post/329572/, https://compress.ru/article.aspx?id=9633

Основные идеи Agile:

люди и взаимодействие важнее процессов и инструментов;
работающий продукт важнее исчерпывающей документации;
сотрудничество с заказчиком важнее согласования условий контракта;
готовность к изменениям важнее следования первоначальному плану.
 
SCRUM
Церемонии, роли. 
Defenition of ready (готова ли задача к разработке); Defenition of done (готова ли задача).
Артефакты скрама: беклог, спринт беклог, инкремент (наше new value/new version продукта).
Метрики: burndown chart, capacity (объём, который команда может взять - количество человеко-часов, которое есть у команды), velocity (количество SP - стори поинтов, среднее за 3 спринта), backlog health (то, насколько задачи сформированы на начальном этапе), throuput (сколько % задач команда выполнила. Хорошо это 80%, отлично 85%).
Lead time (от момента добавления в беклог продукта до релиза), cycle time (от момента взятия в работу до релиза)

KANBAN
https://www.agilealliance.org/glossary/kanban/#q=~(infinite~false~filters~(postType~(~'page~'post~'aa_book~'aa_event_session~'aa_experience_report~'aa_glossary~'aa_research_paper~'aa_video)~tags~(~'kanban))~searchTerm~'~sort~false~sortDirection~'asc~page~1)


LESS и SAFE Это подходы к работе на проектах в которых большое кол-во связанных команд, которые работают по agile методологиям. Есть ещё Spotify model, крайне интересный подход, но его основной недостаток — это зависимость на менталитет людей. В Скандинавии работает хорошо, но больше нигде особо не смог прижиться

Экстремальное программирование - https://worksection.com/blog/extreme-programming.html


Самое важное - в каком типе проектов применять какую методологию, их достоинства и недостатки

###
Performance:
- While Nataliia gave a pretty good explanation on some topics, the answer was not well-structured, some things were missing (e.g. Rendering optimizations, Networking optimizations, Bundle splitting, AOT compilation). 
https://github.com/thedaviddias/Front-End-Performance-Checklist
- metrics: time to first byte, time to load, time to interact.

CI/CD:
- different deployment strategies and their pros/cons
https://circleci.com/blog/canary-vs-blue-green-downtime/

Code Quality:
- code smells https://refactoring.guru/refactoring/smells
- quality gate vs qualiti measures 
https://linearb.io/blog/quality-gates/


CSS:

- common problems with BEM, alternatives to BEM
https://clubmate.fi/oocss-acss-bem-smacss-what-are-they-what-should-i-use
https://acss.io/
https://styled-components.com/

Async execution:
- wasn't able to clearly answer when task queued in microtask would be executed
- couldn't clearly explain the downsides of web workers usage and don't have experience with them

Soft skills:
SP usage
https://www.mountaingoatsoftware.com/blog/dont-equate-story-points-to-hours
- post mortem actions for preventing production issues in future
https://www.atlassian.com/incident-management/handbook/postmortems#what-is-post-mortem


+ Try to find time to create some sandbox project with service/web workers usage just to get some practical experience with it.
