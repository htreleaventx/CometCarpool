# Q8 - Editing Rides and Requests

## Question
Can users edit a ride or request after posting it?

## Final Answer
Yes, users can edit their own ride offers and ride requests before a ride has been confirmed.
- **Before confirmation:** Users can modify pickup location, destination, date, and time. 
    Drivers may also update available seats if this feature is implemented.
- **After confirmation:** Neither the driver nor the rider can unilaterally modify the agreed trip details.
- **Changing confirmed plans:** Users can discuss changes through in-app messaging.
    If changes are necessary, the existing arrangement must be canceled and a new one created.
- **Time restrictions:** No additional time-based editing restrictions are needed because confirmed arrangements are already protected.

## Reasoning

Allowing edits before confirmation gives users flexibility to correct mistakes 
or adjust their plans without canceling and recreating posts.

Once a ride is confirmed, both parties rely on the agreed details. 
Preventing unilateral changes protects drivers and riders from unexpected schedule or route modifications.

Additional time-based restrictions would introduce unnecessary complexity,
since users cannot edit confirmed trip details regardless of how much time remains before departure.

## Impact
- Requirements: FR-03, FR-04, and FR-05 should be reviewed to incorporate editing functionality. 
  FR-11 remains relevant for cancellations. FR-09 may be affected when edited details change potential matches.
- Use Cases: UC-02 (Post and Manage Ride Offers), UC-03 (Search and Manage Ride Requests),
  and UC-05 (Coordinate a Carpool) should reflect the editing restrictions.
- Design/Architecture: The system must track confirmation status and verify ownership before allowing edits.
  Updated postings must be reflected in search and matching results, 
  and previously identified potential matches may need to be recalculated. 
  The exact confirmation mechanism will be defined during P2.
