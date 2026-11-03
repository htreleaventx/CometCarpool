# Q9 - Ride and Request Expiration

## Question
Will rides and requests automatically expire after their scheduled date and time?

## Final Answer
Rides and ride requests will automatically become inactive once their scheduled departure date and time have passed.

Expired rides and requests will no longer appear in active search results or be available for new matches. 
Pending requests will expire automatically, while previously confirmed arrangements will remain accessible in the users ride history.

Expired entries will not be deleted and will remain visible to their owners and involved participants as past records. 
Expiration does not automatically indicate that a ride was successfully completed.

## Reasoning
Automatic expiration prevents outdated rides and requests from remaining available and eliminates the need for users to manually deactivate them. 

Keeping expired entries in the user's history allows them to review previous arrangements without displaying irrelevant results to other users.

## Impact
- Requirements: FR-03 and FR-04 should define automatic expiration for posted rides and requests. 
    FR-05 provides the scheduled date and time used to determine expiration. FR-06 should exclude expired entries from active search results. 
    FR-11 should distinguish cancellation from automatic expiration.
- Use Cases: UC-02 and UC-03 should account for rides and requests becoming inactive after their scheduled departure time.
- Design/Architecture: The system should compare the current time with the scheduled departure time and prevent expired entries 
    from appearing in active searches or accepting new matches. Expired records should remain stored and accessible through the user's history. 
    Recurring schedules should not be affected.