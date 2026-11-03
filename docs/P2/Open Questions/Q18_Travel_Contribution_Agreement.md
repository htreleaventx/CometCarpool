# Q18 - Travel Contribution Agreement

## Question
How will riders and drivers agree on travel contributions?

## Final Answer
Dirvers will specify a suggested travel contribution when posting a ride. Riders can review the amount and agree to it before confirming their participation. All payments to be handled outside CometCarpool. 

## Reasoning
Allowing drivers the first say gives them the motivation to want to be drivers. 
DRivers and riders agreeing on travel contributions beforehand helps prevent confusion over expenses. Keeping payment seperate and outside the system reduces complexity and avoids financial security concerns. 

## Impact
- Requirements:
FR-12 should specify how users propose and agree to travel contributions. 

- Use Cases:
UC-02: allows drivers to specify a contribution
UC-05: SHould allow drivers and riders to acknowldge the agreement. 
- Design/Architecture:
ride listings should include an optional contribution amount and agreement status, the system should record whether both parties agreed but should not process or travel payments. 