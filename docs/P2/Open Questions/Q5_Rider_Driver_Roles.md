# Q5 - Rider and Driver Roles

## Question
Can users be both riders and drivers?

## Final Answer
yes, cometcarpool users can act as both riders and drivers while using the same account. 
Users do not need to switch roles and can access both rider and driver features at anytime. 


## Reasoning
UTD students may need transportation on some days, while also being able to offer rides on others. This ssytem allows students to be flexible and it also revents requiring seperate accounts or manual role switching. 

## Impact
- Requirements:
FR-01 and FR-02 should support a single account for both roles. FR-03 through FR-14 should remain accessible based on the action a user chooses. 
- Use Cases: 
UC-02, UC-03, UC-04, and UC-05 should allow the same user to participate as either a driver or rider.
- Design/Architecture:
use a single user account with acccess to both rider and driver functions. 
The interface should provide options to offer rides, request rides, and manage both activities without switching roles. 