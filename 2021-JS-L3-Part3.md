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
