# Q16 - Rider or Driver No-Shows

## Question
What happens if a driver or rider does not show up to their agreed location?

## Final Answer
If a driver or rider fails to show up for a confirmed ride, the affected user will be able 
to report the incident through the application's reporting system.

Users may select "No-show" as the report reason and provide an optional description of the incident. 
Reports can be submitted from the user's ride history after the scheduled departure time.

The system will not automatically detect no-shows or apply penalties based on individual reports, 
as it cannot independently verify whether a user arrived at the agreed location.

Ratings and reviews will remain available only for completed rides. If a ride did not take place, 
users should submit a report instead of a review.

## Reasoning
Allowing users to report no-shows provides a way to document unreliable behavior without requiring additional tracking features.

Automatic detection would be unreliable because the application does not provide real-time GPS tracking. 
Similarly, automatic penalties could unfairly affect users based on unverified reports.

Keeping no-show reporting separate from ratings and reviews ensures consistency with the existing requirement 
that reviews are submitted after completed rides.

## Impact
- Requirements: FR-14 should include "No-show" as a reporting category. FR-13 should continue to restrict ratings and reviews to completed rides. 
    FR-10 allows users to communicate through in-app messaging if someone is late or missing. FR-11 allows users to cancel a ride or request before departure.
- Use Cases: UC-07 should allow users to report a no-show associated with a confirmed ride. 
    UC-06 should only allow ratings and reviews for completed rides. UC-05 supports communication between riders and drivers.
- Design/Architecture: The reporting interface should include a "No-show" option with an optional description field. 
    Reports should be linked to the relevant ride and involved user. The system should retain expired ride records so users 
    can submit reports after the scheduled departure time. No automatic no-show detection or penalty system is required.