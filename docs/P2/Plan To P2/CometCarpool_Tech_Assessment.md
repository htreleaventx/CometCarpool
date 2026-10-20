# Comet Carpool - Tech Assessment

## 1. Purpose

---

The purpose for this research is so we as a group can identify the possible technologies for developing Comet Carpool and compare the advantages vs disadvantages of the main options. This will cover the potential programming languages, frontend/backend frameworks, databases, and supporting dev tools. 

---

## 2. Programming Language Options

---

| Programming Language | Description                                                                                                                                                                               | Advantages | Disadvantages |
|---|---|---|---|
| **Java** | Java can be a strong option for our backend. It is widely used for object oriented app development and works great with frameworks like Spring Boot.                                      | • Team members have expressed knowledge in java<br> • Strong object oriented programming support<br> • Large ecosystem of libaries and frameworks<br> • Works great with Spring Boot<br> • Strong database and testing support<br> | • Can require more code than languages such as Kotlin or JavaScript<br> • Backend development can have a larger learning curve when Spring Boot is included<br> |
| **Kotlin** | Kotlin is also another JVM language and is compatible with Java. This means Java libraries and frameworks can usually be used from Kotlin.                                                | • More concise than Java<br> • Compatible with Java libraries<br> • Supports Spring Boot<br> • Built in null safety features<br> | • Team members need to learn a new language<br> • Adds unnecessary learning overhead if the team already knows Java<br> • Fewer team members may be comfortable with debugging Kotlin<br> |
| **JavaScript/TypeScript** | JavaScript or TypeScript can be used for both the frontend/backend using Node.js. Node.js provides asynchronous I/O and is designed to efficiently handle network and database operations | • Same language can be used for frontend/backend<br> • Large package ecosystem<br> • Great support for web applications and APIs<br> • TypeScript can provide static typing<br> | • Team members may have experience with Java, but it's not a whole new learning curve<br> • JavaScript projects can become harder to maintain without consistent structure<br> • Requires the team to learn the Node.js ecosystem |
| **Python** | Python can be used for the backend of Comet Carpool with frameworks such as Django, Flask, or FastAPI. It is known for simple syntax and fast development.                                | • Simple and readable syntax<br> • Large ecosystem of libraries and frameworks<br> • Strong support for REST APIs and web development<br> • Fast development compared with more verbose languages<br> | • Team members may have less experience with Python web development<br> • Dynamically typed, which can allow some errors at runtime<br> • Requires learning a Python web framework<br> • Can be slower than compiled languages for some workloads |
| **C#** | C# can be used for the backend of Comet Carpool with ASP.NET Core. It is a statically typed, object-oriented language commonly used for web applications and APIs.                        | • Strong object-oriented programming support<br> • Statically typed, which helps detect errors during development<br> • Strong REST API support with ASP.NET Core<br> • Good database integration with Entity Framework Core<br> | • Team members may need to learn C# and the .NET ecosystem<br> • Can require more setup than lightweight frameworks<br> • Less useful if the team already plans to use Java and Spring Boot |
| **Go** | Go can be used to build the backend and REST API for Comet Carpool. It is a compiled language designed for simplicity, performance, and backend services.                                 | • Fast performance<br> • Simple syntax compared with many compiled languages<br> • Good support for web servers and REST APIs<br> • Built-in support for concurrency<br> | • Team members may have little or no experience with Go<br> • Smaller web development ecosystem than Java, Python, or C#<br> • Fewer built-in web application features<br> • May require more manual setup for authentication and database functionality |

---
## 3. Frontend Framework Options

---

| Frontend Framework | Description | Advantages | Disadvantages | 
|---|---|---|---|
| **React** | React is a JavaScript library for building user interfaces from reusable components. These components can represent elements such as ride cards, search forms, profiles, navigation menus and messaging interfaces. | • Component based architecture<br> • Large ecosystem and community<br> • Reusable UI elements<br> • Good for interactive web apps<br> • Communicates easily with REST APIs<br> • Suitable for responsive desktop and mobile browser interfaces<br> | • Requires learnign React concepts such as components, hooks, and state<br> • Requires JavaScript or TypeScript in addition with Java<br> • Additional project config compared with a simple HTML interface<br> |
| **JavaFX** | JavaFX can be used to create the applications interface all within Java | • Allows the team to stay within the Java ecosystem<br> • Great for traditional desktop applications<br> • No separate JavaScript frontend required<br> | • Usually designed for desktop applications<br> • Users would normally need the application installed<br> • Less convenient for a carpool system that students may want to access from a phone or browser<br> • Web development is less natural than with React<br> | 
| **Vue.js** | Vue.js is a frontend JavaScript framework designed to be flexible and easy to learn. It uses reusable components and can be used to build both small interfaces and larger web apps. | • Relatively easy to learn<br> • Simple and readable syntax<br> • Component based architecture<br> • Great documentation<br> • Works good with REST APIs<br> • Supports TypeScript | • Smaller ecosystem than React<br> • Fewer team members may be familiar with Vue<br> • Some third-party libraries have less support than React alternatives<br> |
| **Angular** | Angular is a full frontend framework that was developed by Google. It includes many built in features for routing, forms, HTTP communication and application structure. | • Provides a complete framework with many built in features<br> • Strong TypeScript support<br> • Consistent project structure<br> • Good for larger and more complex apps<br> • Includes routing, forms, and HTTP tools<br> | • Larger learning curve than React or Vue<br> • Requires more setup and boilerplate<br> • May be more complex than whats needed for Comet Carpool<br> • Team members may need more time to learn Angular concepts<br> |
| **Next.js** | Next.js is a React based framework that adds additional features such as routing, server side rendering, and structured application development. | • Built on React<br> • Includes built in routing<br> • Supports server/client side rendering<br> • Good project organization<br> • Strong TypeScript support<br> • Can improve performance and page loading<br> | • Requires learning both React and Next.js concepts<br> • Adds additional complexity compared with plain React<br> • Some features may be unnecessary for a smaller project<br> |
| **Svelte** | Svelte is a frontend framework that compiles application components into efficient JavaScript during the build process. It is designed to require less boilerplate than other frameworks. | • Simple and readable syntax<br> • Requires less boilerplate code<br> • Good performance<br> • Component based architecture<br> • Fairly easy to learn<br> | • Smaller ecosystem than React or Angular<br> • Fewer tutorials and third party libraries<br> • Team members may have little experience with Svelte<br> • Smaller developer community<br> |
| **SolidJS** | SolidJS is a lightweight JavaScript framework designed for fast and reactive user interfaces. Its syntax is similar to React but uses a different reactivity system. | • Fast performance<br> • Lightweight framework<br> • Component based development<br> • Supports TypeScript<br> • Familiar syntax for developers who know React<br> | • Much smaller ecosystem than React or Vue<br> • Fewer learning resources and libraries<br> • Less commonly used in the industry<br> • Team members may not have any experience in it<br> |

---
## 4. Backend Framework Options

---

| Backend Framework | Description | Advantages | Disadvantages |
|---|---|---|---|
| **Spring Boot** | Spring Boot is a Java based backend framework thats used to build web applications, REST APIs, and database driven systems. Its a strong option for Comet Carpool because it works well with Java and provides built in support for many backends features. | • Works directly with Java<br> • Strong support for REST API's<br> • Good database integration with Spring Data JPA<br> • Strong authentication and security support with Spring Security<br> • Large ecosystem and community<br> • Well suited for structured and scalable applications<br> | • Larger learning curve than lightweight frameworks<br> • Can require more setup and configuration<br> • May be more more complex than necessary for very small applications<br> |
| **ASP.NET Core** | ASP.NET Core is a backend framework developed by Microsoft for building web apps and APIs using C#. It provides strong performance, security, and database integration. | • Strong support for REST APIs<br> • Works well with C#<br> • Good database integration through Entity Framework Core<br> • Strong built in security features<br> • High performance<br> • Good development and testing tools<br> | • Requires the team to learn C# and the .NET ecosystem<br> • May have a larger learning curve if the team has mostly Java experience<br> • Can require more setup than lightweight frameworks<br> |
| **Django** | Django is a python web framework designed to provide many common web application features out of the box. It also includes database tools, authentication, routing and an adminstrative interface. | • Many built in features<br> • Includes database and authentication support<br> • Fast development<br> • Strong security features<br> • Large Python ecosystem<br> • Includes a built in administrative interface<br> | • Requires the team to learn Python web development<br> • Can be more complex than necessary for a simple API<br> • Less flexible in some areas because it follows a structured design approach<br> | 
| **Express.js** | Express.js is a lightweight backend framework for Node.js. It is commonly used to build REST APIs and web servers using JavaScript and TypeScript. | • Simple and lightweight<br> • Fast to set up<br> • Use JavaScript or TypeScript<br> • Large package ecosystem through npm<br> • Works well with React and other frontend frameworks<br> • Flexible project structure<br> | • Provides fewer built in features than Spring Boot or Django<br> • Authentication and database functionality often require additional packages<br> • Project structure can become inconsistent without team standards<br> • Managing alot of third party packages can make it more complex<br> |
| **FastAPI** | FastAPI is a Python framework designed mainly for building REST APIS. It focuses on speed, simplicity and automatic API documentation. | • Fast and lightweight<br> • Easy to create REST APIs<br> • Support Python type hints<br> • Automatically generates API documentation<br> • Simple and readable code<br> • Good performance compared with many Python frameworks<br> | • Smaller ecosystem than Django or Spring Boot<br> • Requires additional libraries for some features<br> • Team members may have to learn Python<br> • Provides fewer built in application features than Django |

---
## 5. Database Options

---

| Database | Description | Advantages | Disadvantages |
|---|---|---|---|
| **PostgreSQL** | PostgreSQL is an open source relational database system that supports structured data, relationships, transactions, constraints, and advanced SQL features. It is strong option for Comet Carpool because the system contains many related entities such as users, rides, requests, messages, reviews and reports. | • Strong support for relational data<br> • Supports primary keys, foreign keys and constraints<br> • Reliable transaction support<br> • Works well with Java, Spring Boot and other backend frameworks<br> • Supports advanced SQL features<br> • Can be extend with PostGIS for geographic and location based queries<br> | • Requires SQL and relational database knowledge<br> • Initial database setup may take time more time than cloud based options<br> • Can be more complex than necessary for very small applications<br> | 
| **MySQL** | MySQL is a widely used relational database system commonly used for web applications. It supports structured tables, relationships, transactions, indexes and standard SQL. | • Widely used and thoroughly documented<br> • Strong support for relational data<br> • Works well with Java, Spring Boot, PHP and others<br> • Large community and ecosystem<br> • Good performance for typical web applications<br> | • Some advanced database features are stronger in PostgreSQL<br> • Requires database setup and management<br> • Less flexible than NoSQL database for unstructured data<br> |
| **MongoDB** | MongoDB is a NoSQL database that stores data in flexible JSON like documents rather than traditional relational tables. It can be used to store Comet Carpool data without requiring a fixed realtional schema. | • Flexible document based structure<br> • Easy to store JSON like application data<br> • Can be quick to develop<br> • Good scalability<br> • Works well with Node.js and JavaScript based applications<br> | • Relationships between users, riders, requests and reviews can be harder to manage<br> • Does not use traditional foreign key relationships<br> • May require duplicated data<br> • Less suitable than relational databases for highly structured relationships<br> | 
| **Firebase Cloud Firestore** | Cloud Firestore is a cloud hosted NoSQL database provided by Firebase. It stores the information in collections and documents while providing real time synchronization between applications and the database. | • Easy cloud setup<br> • Real time data synchronization<br> • Good for messaging and live updates<br> • Integrates with Firebase Authentication<br> • No database server needs to be maintained<br> • Useful for rapid application development<br> | • No traditional relational database structure<br> • Complex relationships can be harder to model<br> • Greater dependence on Googles Firebase platform<br> • Costs can increase as the database grows<br> • Queries are more limited than traditional SQL queries<br> |
| **SQLite** | SQLite is a lightweight relational database that stores the entire database in a local file. Its simple to setup and is commonly used for smaller applications, prototypes and testing. | • Very easy to setup<br> • No separate database server is required<br> • Lightweight and fast for small application<br> • Supports SQL<br> • Useful for prototypes and local development<br> | • Not designed for large multi user web applications<br> • Limited scalability compared with PostgreSQL or MySQL<br> • Concurrent database writes can be more restricted<br> • Not ideal for a deployed carpool system with many users<br> |

---
## 6. Major Libraries and Development Tools

---

| Tool / Category | Purpose | Options | Potential Uses |
|---|---|---|---|
| **Database Access / ORM Tools** | Connect backend application code to relational databases and reduce the amount of manual SQL required. | • Spring Data JPA / Hibernate - Java / Spring Boot<br>• Entity Framework Core - C# / ASP.NET Core<br>• SQLAlchemy - Python<br>• Prisma - JavaScript / TypeScript | • Save and update users<br>• Create and retrieve rides<br>• Manage ride requests<br>• Save messages<br>• Store reviews and reports<br>• Search and filter records |
| **Authentication and Security Libraries** | Control user authentication, authorization, and access to protected application features. | • Spring Security - Spring Boot<br>• ASP.NET Core Identity - C#<br>• Django Authentication - Django<br>• Passport.js - Node.js<br>• Firebase Authentication - Firebase | • Authenticate users<br>• Protect accounts<br>• Control Rider, Driver, and Administrator roles<br>• Restrict access to protected features |
| **JWT Authentication** | Maintains authentication between the frontend and backend by sending a token with authenticated requests. | • JSON Web Tokens<br>• Supported by Spring Boot, Express.js, Django, FastAPI, and ASP.NET Core | • Login sessions<br>• Authenticate API requests<br>• Maintain user access after login |
| **Axios / Fetch API** | Allows the frontend to communicate with the backend REST API using HTTP requests. | • Axios<br>• Fetch API | • Login users<br>• Retrieve rides<br>• Create rides<br>• Send ride requests<br>• Send messages<br>• Submit reviews<br>• Report users or rides |
| **Build and Package Management** | Installs dependencies, manages external libraries, builds the application, and supports testing. | • Maven / Gradle - Java<br>• npm / yarn / pnpm - JavaScript / TypeScript<br>• pip - Python<br>• NuGet - C# | • Install dependencies<br>• Compile applications<br>• Run tests<br>• Manage project libraries |
| **Postman** | Used to manually test REST API endpoints independently from the frontend. | • Postman | • Create accounts<br>• Test login<br>• Create rides<br>• Search rides<br>• Send ride requests<br>• Test messaging<br>• Submit reviews and reports |
| **Git / GitHub** | Provides version control and team collaboration throughout development. | • Git<br>• GitHub | • Version control<br>• Branching<br>• Pull requests<br>• Code reviews<br>• Issue tracking<br>• Documentation<br>• Track contributions |
| **Testing Frameworks** | Automatically verify that application features and business rules work correctly. | • JUnit / Mockito - Java<br>• PyTest - Python<br>• Jest / Vitest - JavaScript / TypeScript<br>• xUnit / NUnit - C# | • Authentication testing<br>• Ride creation testing<br>• Search/filter testing<br>• Ride request testing<br>• Messaging testing<br>• Review/report testing |
| **Swagger / OpenAPI** | Documents REST API endpoints and can provide an interactive interface for testing them. | • Swagger<br>• OpenAPI | • Document API routes<br>• Describe request/response formats<br>• Test endpoints<br>• Help frontend and backend developers coordinate |
| **Docker** *(Optional)* | Creates consistent development environments for the frontend, backend, and database. | • Docker<br>• Docker Compose | • Run PostgreSQL/MySQL locally<br>• Run backend services<br>• Standardize development environments<br>• Prepare for deployment |
| **PostGIS** *(Optional)* | Adds geographic and location-based functionality to PostgreSQL. | • PostGIS extension for PostgreSQL | • Find nearby rides<br>• Search nearby pickup locations<br>• Compare distances<br>• Support future map features |

---
## 7. Next Steps

---

The next step for the team is to review the researched technologies and decide which combination will be used to build Comet Carpool.

The team will compare the options based on factors such as:

- Team experience with each technology
- Learning curve
- Compatibility between the frontend, backend, and database
- Ease of development and testing
- Available libraries and development tools
- Ability to support Comet Carpool features
- Maintainability of the final system
- Time available to complete the project

After reviewing the options, the team will select the final technology stack for the project.

The final structure will include:

- **Programming Language**
- **Frontend Framework**
- **Backend Framework**
- **Database**
- **Authentication Method**
- **Database Access / ORM Tool**
- **Testing Tools**
- **Build and Package Management Tools**

Once the stack has been selected, the team will define the overall system architecture and determine how each part of the application will communicate.

A possible structure would follow:

`Frontend → REST API → Backend → Database`

After the architecture is finalized, the team can begin setting up the development environment, creating the initial project structure, and assigning implementation tasks to team members.

---