# Q3 - Password Recovery and Account Deletion

## Question
What happens if a user forgets their password or wants to delete their account?

## Final Answer
**Password recovery.** A user who forgets their password can select "Forgot password" on the login screen and enter their UTD email address. If the email belongs to a registered account, the system sends a one-time reset link to that UTD email. The link expires after 30 minutes and can only be used once. The user follows the link and sets a new password. The system shows the same confirmation message whether or not the email is registered, so it does not reveal which emails have accounts. After a successful reset, the old password stops working and the user must log in again.

**Account deletion.** A logged-in user can request deletion from their account settings. The system asks them to confirm by re-entering their password, then deletes the account immediately. Deletion is blocked while the user has an active commitment, meaning an upcoming ride they are driving with confirmed riders or an upcoming ride they have joined. The user must cancel or complete those first.

**What happens to data after deletion.**
- Removed permanently: email, password hash, name, and any other profile information, along with the user's open ride offers and open ride requests.
- Kept in anonymized form: completed ride records, messages, ratings, and reports, so other users' ride history and safety reports stay intact. The deleted user is shown as "Deleted User" and the record no longer links to their personal information.
- The UTD email can be used to register a new account afterward. The new account starts fresh and does not inherit any history.

## Reasoning
Every user registers with a verified UTD email (Q1, Q2), so that email is already a trusted channel for proving account ownership. Emailing a reset link avoids security questions or phone numbers, which Q2 decided not to collect. A short expiry and single use limit the damage if a reset email is read by someone else, and the identical confirmation message prevents account enumeration.

Requiring a password to confirm deletion prevents accidental or unauthorized deletion from an unattended logged-in session. Blocking deletion during active commitments protects the other student who is relying on the ride. Anonymizing rather than erasing completed rides, reviews, and reports keeps other users' histories and safety records consistent while still removing the deleted user's personal information. Immediate deletion keeps the process simple and avoids building a grace-period or recovery workflow.

## Impact
- Requirements:
  - FR-01 should note that accounts can be removed and that a UTD email can be re-registered after deletion.
  - FR-02 (update account info) should be extended, or a new requirement added, to cover "reset a forgotten password" and "delete my account".
  - Add a security requirement for reset links: single use, 30 minute expiry, no account enumeration.
- Use Cases:
  - UC-01 should add an alternate flow for forgotten password (request reset, receive email, set new password) and one for account deletion (confirm, check active commitments, delete or block).
  - Ride use cases (UC-02, UC-03) need a rule for a deleted user's open offers and requests (removed) and completed rides (anonymized).
- Design/Architecture:
  - Add an email-sending component (shared with registration verification from Q1) and a password reset token store with token hash, user, expiry, and used flag.
  - Add endpoints to request a reset, complete a reset, and delete an account, with a deletion path that anonymizes related rows instead of cascading deletes.
  - Rides, messages, reviews, and reports should reference users in a way that allows anonymization, for example a nullable user reference or a placeholder "Deleted User" record.
