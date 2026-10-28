# Q11 - Ride Search Filters

## Question
Can riders filter results by date, time, pickup location, destination, and seats?

## Final Answer
The search function will implement filtering results by date, time, pickup location, destination, and seats. 

## Reasoning
This will let users find compatible options more easily, as these attributes become relevant when searching for an available ride.

## Impact
- Requirements: FR-06 should include options to filter by date, time, pickup location, destination, and seats. FR-05 should include users specifying the number of available seats, and the system should log and track ride or ride request information provided by users from FR-05 so it can match results. FR-05 should also be extended to allow users to input their current location directly from their device so they can easily provide a pickup location when applicable.
- Use Cases: UC-03 should let users input details regarding date, time, pickup location, destination, and seats into the search function and then have the system only return rides or ride requests matching their desired details.
- Design/Architecture: The search interface should allow users to provide specific information regarding date, time, and locations, and the system will attempt to find matching results. For date, the user shall select a date from a calendar interface, and the system should only return results matching that day. For time, the user shall specify a time range with 15-minute precision (e.g., 1:15 PM to 2:45 PM), and the system should again only return results within that interval. For pickup location, the user shall enter an address (or provide their current location), and the app should return only results within 2km of that location, sorted by proximity. For the destination, the user shall provide another address, and the system should do the same procedure as for the pickup location. If the user provides both the pickup and final location, the system will sum the results' distances to the respective intended locations and sort by the combined value. Finally, the user shall input the number of seats, and the system should hide all results with fewer available seats, including fully booked rides.
