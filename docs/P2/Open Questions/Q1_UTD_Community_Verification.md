# Q1 - UTD Community Verification

## Question
How will the system verify users are part of the UTD community?

## Final Answer
Users will be required to register using a valid UTD email address. The system will send a verification code to their email and the account will remain unverified until our user completes the verification process/

## Reasoning
Using a UTD email is an easy way to restrict access to members of the UTD community without requiring the system to collect additional ID documents. Email also confirms that our users have access to their UTD account. 

## Impact
- Requirements: Adds a requirement that users have to register with a UTD email and verify
- Use Cases: Update the registration use case to include email verification before the user can access the main system
- Design/Architecture: Add an email verification component and store the users verification status in our database