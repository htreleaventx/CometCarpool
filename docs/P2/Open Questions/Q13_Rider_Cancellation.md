# Q13 - Rider Cancellation After Acceptance

## Question
Can riders cancel after a driver has accepted their request?

## Final Answer
yup! rider can cancel their ride request even after a driver has accepted them. The rider should be notified of the cancellation, and the available seat count should be updated accordingly. 

## Reasoning
We cannot prevent unexpected schedule changes or emergencies that prevent a rider from attendign a ride. Cancellations should be flexible while immediatly norifying the driver to prevent confustion and unnecessary delays. 


## Impact
- Requirements:
FR-11 should clarify that rider can cancel requests after acceptance. The system should notify and update seat availablity according to Q7. 

- Use Cases:
UC-03 should include cancellation after acceptance as an alternative flow. UC-02 should reflect updated seat availabiltiy 
- Design/Architecture:
Ride requests should also support cancelled status. The system should update avaialable seats when an accepted rider cancels and notify the affected driver through the appliation. 