# S-01 — Authentication and Authorization Test Results

**Related items:** R4 / ADR-02 / QAS-05  
**Environment:** Local Spring Boot REST API (`http://localhost:8080`), PostgreSQL, Postman  
**Measurement:** Actual HTTP status, authorization outcome, response time when available, and sanitized screenshot evidence.

## Test results

| Test ID | Test case | Expected result | Actual result | Response time | Outcome | Evidence |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| T-01 | Register a valid `@utdallas.edu` user | Registration succeeds | **Verify and enter actual status** | TBD | Pending verification | `screenshots/T-01-registration.png` |
| T-02 | Log in using valid credentials | 200 OK and JWT returned | **Verify and enter actual status** | TBD | Pending verification | `screenshots/T-02-login.png` |
| T-03 | Request `GET /api/users` without JWT | 401 or 403; no protected data | **403 Forbidden**; no user data shown | **37 ms** | **PASS (API behavior)** | `screenshots/T-03-no-token.png` |
| T-04 | Request `GET /api/users` with invalid JWT | 401 or 403; no protected data | **403 Forbidden**; no user data shown | **56 ms** | **PASS (API behavior)** | `screenshots/T-04-invalid-token.png` |
| T-05 | Request `GET /api/users` with valid JWT | 200 OK; authorized user response | **Verify and enter actual status** | TBD | Pending verification | `screenshots/T-05-valid-token.png` |
| T-06 | Log in with incorrect password | Login rejected; no JWT issued | **Verify and enter actual status** | TBD | Pending verification | `screenshots/T-06-wrong-password.png` |

## Security measurement (QAS-05)

The defined unauthorized protected-endpoint cases tested so far are:

- **T-03:** Missing JWT — denied (**PASS**).
- **T-04:** Invalid JWT — denied (**PASS**).

**Unauthorized denial rate for recorded tests:**

\[
\frac{2\text{ denied requests}}{2\text{ unauthorized requests tested}} \times 100 = 100\%
\]

This measures only the two tested scenarios. It is **not** evidence that every possible unauthorized request has been rejected.

## Observations

- The Spring Security configuration denied requests to `GET /api/users` both without a JWT and with an invalid JWT.
- **Postman assertion caveat:** The screenshots for T-03 and T-04 displayed `Test Results 0/1` even though the server returned 403. Review saved Postman scripts/assertions and ensure they expect denial before claiming the automated Postman checks passed.
- Do not mark T-01, T-02, T-05, or T-06 as passed until the actual HTTP responses and screenshots have been checked.

## Conclusion

The two confirmed denial tests support **ADR-02** and help mitigate **P1 risk R4**. Complete the remaining results, including a successful authorized request, to document both sides of the JWT authentication behavior.

## Evidence checklist

- [ ] T-01 screenshot saved and actual result entered
- [ ] T-02 screenshot saved and actual result entered
- [ ] T-03 screenshot saved (403 Forbidden)
- [ ] T-04 screenshot saved (403 Forbidden)
- [ ] T-05 screenshot saved and actual result entered
- [ ] T-06 screenshot saved and actual result entered
- [ ] Screenshots redacted to remove passwords, JWTs, and personal information
- [ ] All spike evidence committed under `spikes/S-01/`
