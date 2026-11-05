# Q21 - Voluntary Contribution Disclaimer

## Question
How will the app communicate that contributions are voluntary and unenforced?

## Final Answer
Two options - Both should be implemented.
  - popup when creating a request or posting a ride
  - popup when selecting a ride to take or a request to fulfil

## Reasoning
Allows drivers and riders a chance to accept that all payments are unenforced, no matter the direction of the offer or the form of payment taken.

## Impact
- Requirements:
  - The system must show a warning for a student that all voluntary contributions are unenforced
- Use Cases:
  - Add a popup prior to posting or selecting a request/ride to warn users that all voluntary contributions are unenforceable by the application.
- Design/Architecture:
  - Always show disclaimer popup after user presses post submission button, prior to post confirmation.
  - Always show disclaimer popup after user presses ride selection or request fulfilment button but prior to selection or fulfilment confirmation.
