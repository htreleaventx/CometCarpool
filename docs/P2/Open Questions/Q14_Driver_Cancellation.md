# Q14 - Driver Cancellation After Matching

## Question
Can drivers cancel after riders have been matched?

## Final Answer
Drivers may cancel at any time before their ride is matched. A confirmation screen before a ride is cancelled should be added. It would also be convenient to allow drivers to provide a reason for cancelling on the same screen. Riders would then be notified of the cancellation and the reasoning if that part was implemented.

## Reasoning
Though this may allow room for abuse, this is the most straightforward option. The app cannot enforce a ride if the driver has reasons to cancel. Drivers who frequently and deliberately cancel can then be reported for inappropriate behavior. The confirmation screen should be there to avoid accidental cancels.

## Impact
- Requirements: FR-02 should let drivers cancel their posted ride even after it has been matched, and it should provide a confirmation screen. FR-02 should also notify riders of the cancellation. Finally, FR-02 could be extended to let drivers provide a reason for cancelling, but this is not a priority. 
- Use Cases: UC-02 should let drivers cancel a ride at any time, even after it has been matched. UC-05 should also notify the rider when it is cancelled. 
- Design/Architecture: An option to cancel the ride would be shown when a driver is managing the ride. It would then open a confirmation screen with a text box where they could provide an optional reason, along with necessary disclaimers or other interface communication. Upon cancellation, the corresponding rider would then be notified via push notifications.
