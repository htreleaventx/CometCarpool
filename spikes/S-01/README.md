# S-01 — Backend Authentication and Authorization

## Purpose

This architecture spike evaluates whether Comet Carpool's Spring Boot backend can authenticate users with JSON Web Tokens (JWTs) and deny requests to a protected API endpoint when authentication is missing or invalid.

- **P1 risk:** R4 — Unauthorized access to students' personal information.
- **Architecture decision:** ADR-02 — Backend Authentication and Authorization.
- **Quality attribute:** QAS-05 — Security (deny 100% of defined unauthorized-access attempts).

## Question

**Can the Spring Boot backend authenticate users using JWTs and prevent unauthorized access to `GET /api/users`?**

## Set-up

- **Stack:** Java 21, Spring Boot, Spring Security, JWT, PostgreSQL, and Postman.
- **Application code:** `src/backend/` (relative to the repository root).
- **Local API:** `http://localhost:8080`.
- **Test data:** A disposable `@utdallas.edu` test user; no real student information is needed.
- **Test method:** Send HTTP requests in Postman and record actual HTTP status codes and whether protected user data is returned.

### Reproduce the tests

1. Start PostgreSQL and the Spring Boot backend. Configure `JWT_SECRET` in your local environment; do not commit the secret.
2. Run T-01 to register a test user (`POST /api/users`).
3. Run T-02 to log in (`POST /api/users/login`) and obtain a JWT. Keep the token private.
4. Run T-03: `GET /api/users` with **No Auth**. Expect denial (401 or 403) and no user data.
5. Run T-04: `GET /api/users` with Bearer Token `invalid.jwt.token`. Expect denial (401 or 403) and no user data.
6. Run T-05: `GET /api/users` with the valid JWT from T-02. Expect HTTP 200 and the authorized response.
7. Run T-06: `POST /api/users/login` with an incorrect password. Expect rejection with no JWT.
8. Record the observed results in [`Test_Results.md`](test-results.md). Save sanitized Postman screenshots in [`screenshots/`](screenshots/).

## Results and measurements

**Confirmed from Postman screenshots shared during testing:**

- **T-03 (missing JWT):** HTTP **403 Forbidden**, **37 ms**; request denied.
- **T-04 (invalid JWT):** HTTP **403 Forbidden**, **56 ms**; request denied.
- **Unauthorized denial rate for these two recorded scenarios:** **2/2 = 100%**.

T-01, T-02, T-05, and T-06 were described as run or in progress, but their exact HTTP responses and timing are not documented here. Complete their rows using the actual Postman evidence before submission. The **100% figure applies only to the two recorded unauthorized scenarios**, not every possible security attack or the full QAS-05 acceptance test suite.

Postman showed `Test Results 0/1` on the T-03 and T-04 screenshots. This indicates a separate Postman assertion failure; review or update that assertion before claiming the Postman test suite itself passed. The server's observed 403 responses still demonstrate denial for these two requests.

## Architectural conclusion

The observed responses **support ADR-02**: the backend denies requests to the protected users endpoint when the JWT is absent or invalid, reducing exposure to **R4**. Successful authorized access (T-05) should also be recorded before concluding that the complete authentication flow is functioning as intended. The broader QAS-05 requirement needs an explicitly defined, larger security test set.

## Evidence

- [`Test_Results.md`](Test_Results.md) — test-by-test expected and actual outcomes.
- `screenshots/T-01_registration.png`
- `screenshots/T-02_login.png`
- `screenshots/T-03_no_token.png`
- `screenshots/T-04_invalid_token.png`
- `screenshots/T-05_valid_token.png`
- `screenshots/T-06_wrong_password.png`

**Before committing:** verify all screenshot files exist, blur passwords and JWT values, and remove personal account information. Do not commit `JWT_SECRET`, database passwords, or other credentials.
