# Comet Carpool 

## 1. Purpose
The purpose of this document is to make the final decision on the tech stack that we will use for Comet Carpool after reviewing the available programming languages, frontend/backend frameworks, databases and development tools.

Comet Carpool will first be developed as a mobile web application with the potential to expand into an iPhone & Android applications in the future. The selected technology stack should support the current project requirements while also allowing for potential future growth and development.

---

## 2. Final Tech Stack
| Category | Selected Tech |
|:---|:---|
| **Programming Languages** | [Java](https://docs.oracle.com/en/java) (Backend) / [TypeScript](https://www.typescriptlang.org/docs) (Frontend) |
| **Frontend Framework** | [React](https://react.dev) |
| **Backend Framework** | [Spring Boot](https://docs.spring.io/spring-boot) |
| **Database** | [PostgreSQL](https://www.postgresql.org/docs) |
| **Database Access/ORM** | [Spring Data JPA](https://docs.spring.io/spring-data/jpa/reference) / [Hibernate](https://hibernate.org/orm/documentation) |
| **Authentication/Security** | [Spring Security](https://docs.spring.io/spring-security/reference) + [JWT](https://jwt.io/introduction) |
| **Frontend API Development** | [Axios](https://axios-http.com/docs/intro) |
| **Backend Build Tool** | [Maven](https://maven.apache.org/guides) |
| **Frontend Package Manager** | [npm](https://docs.npmjs.com) |
| **Backend Testing** | [JUnit](https://docs.junit.org) + [Mockito](https://site.mockito.org) |
| **Frontend Testing** | [Vitest](https://vitest.dev/guide) |
| **API Testing** | [Postman](https://learning.postman.com/docs) |
| **API Documentation** | [Swagger](https://swagger.io/docs) / [OpenAPI](https://spec.openapis.org/oas/latest.html) |
| **Version Control/Collaboration** | [Git](https://git-scm.com/doc) / [GitHub](https://docs.github.com/) |
| **Optional Development Tool** | [Docker](https://docs.docker.com/) / [Docker Compose](https://docs.docker.com/compose/) |
| **Optional Geographic Extension** | [PostGIS](https://postgis.net/documentation/) |

---

## 3. Programming Languages
### Java (Backend)
Java was selected as the backend programming language.

The team has already expressed familiarity with Java, which reduces the learning curve and allows development to begin more quickly.

Java also provides:
- Strong object-oriented programming support
- Good database integration
- Strong testing support
- A large ecosystem of libraries and frameworks
- Direct compatibility with Spring Boot
  Java is a strong fit for the structured backend logic required by Comet Carpool, including:
- Users
- Rides
- Ride requests
- Messages
- Reviews
- Reports

[Java Documentation](https://docs.oracle.com/en/java)

--- 

### TypeScript - Frontend
TypeScript was selected for the frontend.

React applications are built using JavaScript-based technologies, and TypeScript adds static typing on top of JavaScript.

TypeScript was selected because it can:
- Catch many errors during development
- Improve code readability
- Make frontend components easier to maintain
- Provide clearer data structures
- Improve communication between the frontend and backend API
  This will be especially useful when handling data such as ride information, user profiles, ride requests, messages, and reviews.

[TypeScript Documentation](https://www.typescriptlang.org/docs)

---

## 4. Frontend Framework
### React
React was selected as the frontend framework.

Comet Carpool will be designed specifically as a mobile-first browser application, meaning the interface will be created primarily for smartphone screens while still remaining usable on larger screens.

React is a strong choice because it supports reusable components that can be used to build features such as:
- Ride cards
- Search and filter forms
- User profiles
- Messaging interfaces
- Ride request screens
- Reviews
- Reports
- Navigation menus
  React also communicates easily with REST APIs, which allows the frontend to communicate with the Spring Boot backend.

React was selected instead of JavaFX because JavaFX is mainly designed for desktop applications and would normally require users to install the application.

For Comet Carpool, students should be able to open the website directly from a browser on their phone.

React was also selected instead of Angular, Vue, Svelte, SolidJS, and Next.js because it provides a strong balance between:
- Large ecosystem
- Strong documentation
- Reusable UI components
- Mobile-friendly web development
- Community support
- Project complexity

[React Documentation](https://react.dev)

---

## 6. Backend Framework
### Spring Boot

Spring Boot was selected as the backend framework.

Spring Boot integrates directly with Java and provides strong support for:
- REST APIs
- Database access
- Authentication
- Security
- Validation
- Testing
  It also provides a structured project architecture that can help the team keep the backend organized as more Comet Carpool features are implemented.

Spring Boot works especially well with:
- Spring Data JPA
- Hibernate
- Spring Security
- PostgreSQL
- JUnit
- Mockito
  Although Spring Boot has a larger learning curve than lightweight frameworks such as Express.js or FastAPI, the team's Java experience and the framework's ecosystem make it a strong choice for Comet Carpool.

[Spring Boot Documentation](https://docs.spring.io/spring-boot)

---

## 7. Database
### PostgreSQL

PostgreSQL was selected as the database.

Comet Carpool contains strongly related data such as:
- Users
- Drivers
- Riders
- Rides
- Ride requests
- Messages
- Reviews
- Reports
  Because these entities have many relationships, a relational database is a better fit than a document-based NoSQL database.

PostgreSQL provides:
- Primary keys
- Foreign keys
- Relational constraints
- Transactions
- Strong SQL support
- Reliable data consistency
- Good integration with Java and Spring Boot
  PostgreSQL can also support PostGIS in the future if Comet Carpool requires advanced location-based features.

PostgreSQL was selected over MongoDB and Firebase because the Comet Carpool data model contains many relationships that are easier to represent using a relational database.

It was selected over SQLite because Comet Carpool is intended to support multiple users rather than operate as a small local application.

[PostgreSQL Documentation](https://www.postgresql.org/docs)

---

## 8. Major Libraries and Development Tools
### Spring Data JPA / Hibernate

Spring Data JPA and Hibernate will be used to connect the Spring Boot backend to PostgreSQL.

They will simplify common database operations such as:
- Creating records
- Retrieving records
- Updating records
- Deleting records
- Searching records
- Filtering records
  They can be used for Comet Carpool entities such as users, rides, requests, messages, reviews, and reports.

[Spring Data JPA Documentation](https://docs.spring.io/spring-data/jpa/reference)<br>
[Hibernate Documentation](https://hibernate.org/orm/documentation)

--- 

### Spring Security

Spring Security will provide authentication and authorization for protected backend features.

It can be used to control access to features such as:
- Creating rides
- Sending ride requests
- Messaging users
- Submitting reviews
- Reporting users
- Accessing protected profile information

[Spring Security Documentation](https://docs.spring.io/spring-security/reference)

---

### JWT

JSON Web Tokens will be used to maintain authentication between the React frontend and Spring Boot backend.

After login, the frontend can include the user's token with protected API requests so the backend can verify the user's identity.

[JWT Documentation](https://jwt.io/introduction) 

---

### Axios

Axios will be used by the React frontend to communicate with the Spring Boot REST API.

Axios can be used for actions such as:
- Logging in users
- Creating rides
- Retrieving rides
- Searching rides
- Filtering rides
- Sending ride requests
- Sending messages
- Submitting reviews
- Reporting users or rides

[Axios Documentation](https://axios-http.com/docs/intro) 

---

### Maven

Maven will be used to manage backend dependencies and build the Spring Boot application.

It will provide a consistent way to:
- Install backend dependencies
- Compile the application
- Run tests
- Manage Java libraries

[Maven Documentation](https://maven.apache.org/guides)

--- 

### npm

npm will be used to manage the React, TypeScript, and Tailwind CSS frontend dependencies.

[npm Documentation](https://docs.npmjs.com) 

---

### JUnit and Mockito

JUnit and Mockito will be used for backend testing.

They can be used to verify business logic such as:
- Ride creation
- Ride request handling
- User validation
- Reviews
- Reports
- Authentication behavior

[JUnit Documentation](https://docs.junit.org)<br>
[Mockito Documentation](https://site.mockito.org)

---

### Vitest

Vitest will be used for frontend unit testing.

It integrates well with modern React and TypeScript projects and can be used to test frontend components and application behavior.

[Vitest Documentation](https://vitest.dev/guide) 

--- 

### Postman

Postman will be used to manually test REST API endpoints.

This allows the backend to be tested independently from the frontend.

Examples include:
- Account creation
- Login
- Ride creation
- Ride search
- Ride requests
- Messaging
- Reviews
- Reports

[Postman Documentation](https://learning.postman.com/docs)

--- 

### Swagger / OpenAPI

Swagger / OpenAPI will be used to document the REST API.

This will make it easier for frontend and backend developers to understand:
- Available API routes
- Request formats
- Response formats
- Required parameters
- Authentication requirements

[Swagger Documentation](https://swagger.io/docs)<br>
[OpenAPI Documentation](https://spec.openapis.org/oas/latest.html)

---

### Git and GitHub

Git and GitHub will continue to be used for:
- Version control
- Branching
- Pull requests
- Code review
- Issue tracking
- Documentation
- Contribution tracking

[Git Documentation](https://git-scm.com/doc)<br>
[GitHub Documentation](https://docs.github.com/)

---

### Docker / Docker Compose - Optional

Docker can be added if the team wants a consistent local development environment.

Docker Compose could be used to run PostgreSQL and other services with the same configuration across team members' computers.

[Docker Documentation](https://docs.docker.com/)<br>
[Docker Compose Documentation](https://docs.docker.com/compose/) 

--- 

### PostGIS - Optional

PostGIS may be added later if Comet Carpool requires more advanced location-based features.

Possible future uses include:
- Finding nearby rides
- Searching nearby pickup locations
- Comparing distances
- Supporting map-based functionality

[PostGIS Documentation](https://postgis.net/documentation/) 

---

## 9. Final Architecture 

The proposed architecture will follow:

```text 
Mobile Browser
      ↓
React + TypeScript
      |
    Axios
      ↓
Spring Boot REST API
      |
Spring Security + JWT
      |
Spring Data JPA / Hibernate
      ↓
PostgreSQL
```

The frontend will be designed using a mobile-first responsive layout so that Comet Carpool is optimized for smartphone browsers while still remaining usable on larger screens.

GitHub will be used for version control and project management, while Postman will support API testing and Swagger / OpenAPI will be used for API documentation.

---

## 10. Why This Stack Was Selected

The final stack was selected because it provides a strong balance between team familiarity, development speed, mobile browser support, maintainability, and support for the required Comet Carpool features.

The most important factors were:
- The team already has Java experience.
- Java and Spring Boot work naturally together.
- React is well suited for mobile-first browser applications.
- Tailwind CSS makes responsive mobile layouts easier to build.
- PostgreSQL is a strong fit for the project's relational data.
- Spring Data JPA simplifies database development.
- Spring Security and JWT provide a clear authentication approach.
- The selected tools have large ecosystems and strong documentation.
- The technologies integrate well with each other.
- Students will not need to install a separate mobile application.
- The application can be accessed directly through a phone browser.
- The architecture can later support a PWA if needed.
- The stack supports the current requirements without introducing unnecessary complexity.

## 11. Conclusion

The selected technology stack provides Comet Carpool with a strong foundation for developing a mobile-first web application. The chosen technologies work well together, match the team’s current experience, and support the main features required for the project.

This stack also allows Comet Carpool to grow in the future, including the possibility of expanding into dedicated iPhone and Android applications while continuing to use the same backend and database structure.

---

## AI Use Disclaimer

The Comet Carpool team conducted the research and provided the information used in this document. Generative AI was used to help organize and improve the presentation of the content, as well as to provide guidance when comparing the researched technologies and determining a suitable technology stack. All final technology selections and project decisions were reviewed and approved by the team.