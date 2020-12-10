In 2020:
"BE"
NodeJs
MongoDb, Mongoose
PostgreSQL (more advanced), TypeORM, sequelize

"FE"
* SCSS
* Handlebars

* subscription lives in event loop, not in the component. So without unsubscribe it keeps living in the event loop and therefore we have memory leaks =)
* dynamic components, componentFactoryResolver, (NB! dynamic component is creates as a subling, not inside the component). Dialog in material is dynamic
* instead of ng-deep : use css variables OR use HostBinding OR at least add class specifier to ng-deep
* there are selectors for ng-content
* interesting way of organizing things in Angular project:

- core module ("very important to have") - guards, interceptors, singleton services

- shared module - for reusable components and not signleton services
	- - material module! great idea

- data folder
	- - schema (types, classes, interfaces, enums, etc)
	- - services

- layout
- modules
- Data resolver
* reduce change detection cycle: nzZoneEventCoalescing: true in config
* Path aliases in tsconfig ^^
* cookie - peace of data from server, keeped in browser in cookies =), used generally for auth, personalization, statistics gathering, session check. Not safe if it is not used with HTTPS

