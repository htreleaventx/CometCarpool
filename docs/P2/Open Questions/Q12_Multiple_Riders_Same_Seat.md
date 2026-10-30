# Q12 - Multiple Riders Claiming the Same Seat

## Question
What happens if multiple riders try to claim the same available seat?

## Final Answer
Multiple riders may request a seat on the same ride, but a seat will only be reserved once the driver accepts a request.

The system will verify seat availability before confirming each request. If multiple requests compete for the last available seat, 
only the first successfully confirmed request will reserve it. Other requests will be declined once the ride becomes full.

The number of available seats will update automatically after each confirmation. Once all seats are reserved, 
the ride will no longer appear in active search results or accept new requests.

If a confirmed rider cancels before departure, the reserved seat will become available again.

## Reasoning
Allowing multiple riders to submit requests gives drivers flexibility in choosing passengers.
Reserving seats only after driver confirmation prevents unconfirmed requests from unnecessarily blocking availability.

Automatically tracking available seats prevents overbooking and ensures riders only see rides that can accommodate them.

## Impact
- Requirements: FR-03 and FR-05 should support specifying and tracking available seats. FR-04 should allow riders to submit seat requests.
    FR-06 should exclude fully booked rides from active search results. FR-11 should release reserved seats when a confirmed rider cancels.
- Use Cases: UC-02 should include driver confirmation of ride requests and seat availability management. 
    UC-03 should prevent riders from requesting seats on fully booked rides and handle rejected requests.
- Design/Architecture: The system should maintain the number of available seats for each ride and update it when requests are confirmed or cancelled.
    Seat confirmation must be handled atomically to prevent simultaneous requests from reserving the same seat. 
    Riders whose requests are rejected should see an appropriate status message.