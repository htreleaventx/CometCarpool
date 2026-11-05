# Q6 - User Suspension and Banning

## Question
Can a user be suspended or banned after multiple safety reports?

## Final Answer
Users will be automatically suspended for a week after five safety reports within 30 days. If they were previously suspended within 30 days, and they receive five more safety reports during that interval, their account will be automatically permanently banned. Additionally, if they have already been suspended three times within a year, the fourth instance of suspension will instead be a permanent ban.

## Reasoning
We will not actively moderate the app once it is live, nor will we investigate or resolve disputes between users. However, we can implement an automatic procedure to suspend or ban problematic users. Though it is not a perfect solution, it can at least function as a baseline which is necessary to prevent abuse within the app. The grounds for a suspension or ban and the allocated time intervals can be negotiated and adjusted further.

## Impact
- Requirements: FR-14 should track reports and be extended to automatically suspend or ban users after multiple infractions. FR-01 should prevent users from accessing their account when it is suspended or banned, and it should also prevent the same UTD email from creating a new account. FR-01 should also inform users upon account creation that multiple infractions will result in a suspension or ban.
- Use Cases: UC-07 should incorporate this automatic suspension/banning procedure. It should otherwise remain unchanged on the user end.
- Design/Architecture: The automatic suspension and banning procedure is done completely internally within the system. Users should only be informed when their account is deactivated or banned, as well as the amount of time left before they can access their account again. Users should not be informed of their current infractions, number of reports, or of how this system functions.
