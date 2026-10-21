## Use Case Analysis: 

## UC-01 — Account Creation and Management
this use case allows elligible students to create and manage their CC (CometCarpool) accounts. 
- based on sectipn 3.5 from P1, UC-01 is associated with FR-01: Allow a UTD student to create a CometCarpool user account
and FR-02: Allow users to update their account information.
- Primary Actor: UTD Student. 
- it has 6 main implied interactions: 
1. A student begins account registration.
2. The student provides the required account information.
3. The system creates the account if the information satisfies its requirements.
4. An existing user accesses their profile.
5. The user updates permitted account information.
6. The system saves the updated information.
- what needs clarification? 
    - How can users recover passowrds or delete accounts? 
    - Can users act as both riders and drivers? 
    - What information is required during registration? 
    - What method is there for verifying whether a user belongs to the UTD community? 
- Suggested improvement: 
    - Define the required fields and UTD verification process. 
    - Clarify whether password recovery and account deletion are incldued in account management
    - Confirm that students may use a single account for rider and driver roles. 
## UC-02    
this use case addresses the creation and management of multiple available ride postings. 
- it is associated with FR-03: Allow drivers to post an available ride, FR-05: Allow users to provide pickup location, destination, date, and time. FR-11: Allow users to cancel a posted ride or ride request, and FR-15: Allow rides to destinations on the UTD campus and around Dallas. 
- what needs clarifiation? 
    - p1 doesnt clearly define how drivers can specify or manage the # of available seats. 
    - the process for accepting riders and updating seat availabiltiy hasnt been fully established. 
    - there is no way to edit existing ride information 
    - no infromation on what happens to outdated ride postings
- suggested improvements: 
    - clarify whether drivers should specify the number of available seats when creating a ride posting
    - define how drivers accept ride requests and how the system should handle multiple requests for limited seats 
    - confrim whether drivers can edit ride information after posting, or must they cancel and create a new posting 
    - clarify if ride postings should become unavailable after their scheduled departure time. 
## UC-03
This use case addresses how student riders search for available rides and create or manage their own ride requests.
- It is associated with FR-04: Allow riders to post ride requests, FR-05: Allow users to provide pickup location, destination, date, and time, FR-06: Allow users to search for available rides and ride requests, and FR-11: Allow users to cancel a posted ride or ride request.
- what needs clarification? 
    - P1 does not clearly define how riders request to join an existing available ride.
    - The process for drivers accepting or rejecting a rider's request has not been fully established.
    - P1 does not specify whether riders can edit an existing ride request after posting it.
    - P1 assumes riders can cancel requests at any time, but does not explain what happens when a rider cancels after being accepted by a driver.
    - There is no clear explanation of what happens when multiple riders request the same available ride.
- suggested improvements: 
    - Clarify how riders can request to join an existing ride instead of creating a separate ride request.
    - Define how drivers accept or reject ride requests and how riders can view the status of their requests.
    - Confirm whether riders can edit their ride requests after posting or must cancel and create a new request.
    - Clarify how the system should handle multiple riders requesting the same available ride.
    - Define what happens when a rider cancels a request after being matched with a driver. 
## UC-04: 
This use case addresses how student riders and drivers manage their recurring transportation schedules and identify potential matches based on compatible availability.
- Primary Actor: Student Rider. Supporting Actor: Student Driver
- This use case is associated with FR-07: Allow drivers to record the days and times they are regularly available to drive, FR-08: Allow riders to record the days and times they regularly need transportation, and FR-09: Allow users to identify riders or drivers with compatible recurring schedules.
- What needs clarification? 
    -  how does the system determines whether two recurring schedules are compatible? 
    - The process for updating or deleting an existing recurring schedule has not been established.
    - P1 does not specify whether matching considers pickup locations and destinations or only days and times.
    - P1 also does not define whether changes to a user's recurring schedule affect previously identified matches.
- Suggested Improvements: 
    - Clarify how the system determines whether recurring schedules are compatible, including whether exact or overlapping times qualify as matches.
    - Confirm whether riders and drivers can edit or delete their recurring schedules after saving them.
    - Define whether matching should consider pickup locations and destinations in addition to days and times.
    - Determine whether potential matches should update when a user changes their recurring availability.
## UC-05
This use case addresses how student riders and drivers communicate through in-app messaging and coordinate agreements to split travel costs.
- Primary Actor: Student Rider. Supporting Actor: Student Driver
- It is associated with FR-10: Allow riders and drivers to exchange messages through an in-app messaging system, and FR-12: Allow riders and drivers to indicate an agreement to split travel costs.
- what needs clarification? 
    - p1 doesnt clearly define whether messaging is available to all users or only riders and drivers coordinating a ride
    - p1 doesnt specify how users should confirm that theyve agreed to split travel costs
    - its left unclear whether agreed contribution amounts will be stored or displayed within the system 
- suggested improvements: 
    - clarify when users should initiate conversations and whether messaging is limited to text
    - define how riders and drivers can indicate a cost-sharing agreeement without processing payments
    - confirm whether contribution amounts should be saved as part of the ride details
## UC-06: 
This use case addresses how student riders and drivers submit ratings and reviews for one another after completing a ride.
- Primary Actor: Student rider/ driver. Supporting actor: whoever is being reviewed
- It is associated with FR-13: Allow riders and drivers to submit a rating and review for one another after completing a ride.
- what needs clarification: 
    - how does the system determine whether a ride has been completed? 
    - p1 doesnt specify whter users can submit multiple reviews for the same rde
    - can users edit previsouly submitted reviews? 
- suggested improvements: 
    - clarify how the system verifies ride completion before allowing reviews. 
    - confrim whether each users is limited to one review per completed ride 
    - define whether users can edit or delete their submitted reviews
## UC-07
This use case addresses how users report other users, reviews, or ride related issues involving innappriopriate behavior or safety concerns. 
- Primary Actor: Student driver/rider. Supporting actor: System admin
- what needs clarification: 
    - p1 doesnt specify how admin review/manage submitted reports
    - p1 doesnt define whether users receive updates about the status of their reports
    - it's unclear whether repeated reports can lead to account restrictions or suspension
## System actors: 
- Student Riders: Searches for available rides, posts requests, manages recurring transportation needs, communicates with drivers and submits reviews or reports
- Student Drivers: post available rides, manages ride availability, communicates with riders and submits reviews or reports
- system admin: responsible for basic account management and reviewing reported activity. 
Students act as both driver and riders using the same account. 
## Current ssytem interactions:
- UC-01: Create an account and update profile information (UTD Student).
- UC-02: Post available rides, provide trip details, and cancel ride postings (Student Driver).
- UC-03: Search for available rides, create ride requests, and cancel requests (Student Rider).
- UC-04: Save recurring schedules and identify compatible schedules (Student Rider and Student Driver).
- UC-05: Exchange messages and indicate cost-sharing agreements (Student Rider and Student Driver).
- UC-06: Submit ratings and reviews after completed rides (Student Rider and Student Driver).
- UC-07: Report users, reviews, or ride-related issues (Student Rider and Student Driver).
## missing or unclear ineractions: 
1. UC-01: Account Management
    - It is unclear how UTD student eligibility will be verified and what information is required during registration.
    - Suggestion: Define the registration requirements and student verification process.
2. UC-02 & 03: Ride management
    - The process for accepting ride requests, managing available seats, and handling cancellations after matching has not been fully established.
    - Suggestion: Clarify how ride acceptance, seat availability, and cancellations should function.
3. UC-04: Recurring Schedule Matching
    - p1 doesnt clearly define how the system determines whether recurring schedules are compatible. 
    suggestion: establish a matching criteria based off days times and pickup locations and destinations. 
4. UC-05: Messaging and Cost SHaring: 
    - p1 doesnt specify how users formally indicate cost sharing agreements or whether contribution amounts are stored 
    - suggestion: clarify how agreements are recoreded while maintaining the restriction against payment processing 
5. UC-06: ratings and reviews
    - p1 doesnt establish how the system should verify that a ride has been completed before allowing reviews. 
    - suggestion: clarify whether admin can review reports and take actions as restricting 
6. UC-07: reporting issues 
    - the process for admin reviewing reports and handling repeated safety complaints is not c;early established 
    - suggestion: clarify whether admin can revoew reports and take actions as restricting accounts 
