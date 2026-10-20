# Comet Carpool Development Setup

This folder contains setup scripts for installing the development tools required for Comet Carpool.

## Installed System Tools

The setup scripts install:

- Git
- Java 21
- Maven
- Node.js / npm
- PostgreSQL 16
- Postman

The scripts do **not** install:

- Docker
- Docker Compose
- PostGIS

These tools are currently optional and are not required for the initial Comet Carpool development environment.

---

## Project Dependencies

Some technologies in the Comet Carpool stack are project dependencies rather than system wide applications.


### Frontend

Frontend dependencies are managed through:

`src/frontend/package.json`

Examples include:

- React
- TypeScript
- Axios
- Vitest

When `package.json` exists, the setup script runs:

```bash
npm install
```

This downloads the frontend dependencies defined by the project.

### Backend

Backend dependencies are managed through:

`src/backend/pom.xml`

Examples include:

- Spring Boot
- Spring Security
- Spring Data JPA
- Hibernate
- JWT library
- PostgreSQL JDBC driver
- JUnit
- Mockito
- Swagger / OpenAPI libraries

When `pom.xml` exists, the setup script asks Maven to download the dependencies defined by the project.

---

# macOS Setup

The macOS setup script uses Homebrew.

From the root of the CometCarpool repository:

```bash
chmod +x setup/setup-dev.sh
./setup/setup-dev.sh
```

The script will install Homebrew automatically if it is not already installed.

It will also start PostgreSQL 16 as a Homebrew service.

If Java is not recognized immediately after installation, restart the terminal or run:

```bash
source ~/.zshrc
```

---

# Windows Setup

The Windows setup script uses Windows Package Manager (`winget`).

Open PowerShell from the root of the CometCarpool repository and run:

```powershell
powershell -ExecutionPolicy Bypass -File .\setup\setup-dev.ps1
```

If PowerShell reports that a newly installed command such as `java`, `mvn`, `node`, or `npm` cannot be found, close PowerShell, reopen it, and run the setup script again.

If `winget` is not available, install or update **App Installer** from the Microsoft Store.

---

## Expected Repository Structure

```text
CometCarpool/
├── docs/
│   ├── P1/
│   ├── P2/
│   └── P3/
├── src/
│   ├── frontend/
│   │   └── ...
│   └── backend/
│       └── ...
├── setup/
│   ├── setup-dev.sh
│   ├── setup-dev.ps1
│   └── README.md
├── .gitignore
└── README.md
```

---

## Important

The setup scripts install the tools needed by the development environment. They do not create the React frontend or Spring Boot backend projects.

Once those projects are created, their dependencies will be stored in `package.json` and `pom.xml` allowing every team member to install the same project dependencies automatically.
