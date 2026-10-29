# Q7 - Available Seats

## Question
Can drivers specify the number of available seats?

## Final Answer
Yes. Drivers can specify the number of availiable passenger seats when posting a ride. The number of available seats should decrease as riders are accepted and increase if an accepted rider cancels. 

## Reasoning
This allows drivers to specify available seats. It also prevents overbooking and ensures riders know whether a ride has has space. This also makes coordinating carpools with multiple passengers a lot easier. 

## Impact
- Requirements:
FR-03 should be updated to include the number of available seats when posting a ride. 
A requirement should also specify how seat availability updates when riders are accepted or cancelled
- Use Cases:
UC-02: should include entering and updating available seats. 
UC-03: displays seat availability when riders cancel, and prevents bookings that exceed available seating. 
- Design/Architecture:
RIde listing should store seat capacity and remaining available seats. The system should update availability when requests are accepted or when accepted riders cancel, and prevent bookings that exceed the available seats. 