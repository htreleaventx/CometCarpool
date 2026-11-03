# Q20 - Storing Contribution Amounts

## Question
Will agreed contribution amounts be saved in ride details?

## Final Answer
No Comet Carpool wont store or process contributions/payments through our system.

Users can discuss amongst each other through messaging and such, but this sort of thing will remain outside the system (not handled by us). 

## Reasoning
Payments are outside of our scope for Comet Carpool. Storing contribution amounts can make the system look like it is managing or enforcing payments.

Keeping payment information outside the applications reduces the complexity and avoids additional financial and privacy concerns. 

## Impact
- Requirements: DO NOT store payment amounts or contributions.
- Use Cases: Users can discuss through messaging only.
- Design/Architecture: No payment fields, tables, or processing features are needed.