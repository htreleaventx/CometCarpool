# Q2 - Account Registration Information

## Question
What information must users provide when creating an account?

## Final Answer
Users must provide their full name, IUTD email address, and password when registering for CometCarpool. Users should verify their UTD emails before accessing the System. Additional info, such as phone numbers, vehicle details, or class schedules, are not required during the registration step. 

## Reasoning
By requiring a UTD email we are restricting the platform to UTD student only. A name helps identify users, while passwords provide a method of account authentification. Keeping registration simple encourages students to sign up without collecting unnecessary personal information. 

## Impact
- Requirements:
FR-01 should specify the required registration fields and email verifcation. 
FR-02 should allow users to update permitted profile information 
- Use Cases:
UC-01 should include registration, email verification, and account updates. 
- Design/Architecture:
creating user account model containing a user ID, name, UTD email, passqord hash, and verifcation status. The interface should provide a registration form and email verification process. 