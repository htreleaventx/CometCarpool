# Q17 - In-App Messaging Features

## Question
What communication features will in-app messaging support?

## Final Answer
In-app messaging is **text-only, one-to-one, and tied to a specific ride**. It exists so a rider and a driver can coordinate a ride (pickup spot, timing, small changes) without sharing phone numbers or other personal contact details.

**Message types.** Users can send plain text messages only, up to 500 characters each. Images, files, voice messages, location sharing, and group chats are not supported. Messages are delivered when the recipient opens the conversation or refreshes it. Real-time typing indicators, read receipts, and live GPS sharing are not included.

**When messaging can start.** A conversation is created for a ride when a rider sends a request to join that ride, or when a driver responds to a posted ride request. After that, both people can message each other. This lets a rider ask a question before the driver accepts, and it keeps strangers from messaging each other with no ride in common. Users cannot start a conversation from a profile.

**When messaging ends.**
- If a request is declined or cancelled, the conversation becomes read-only.
- When a ride is completed or cancelled, the conversation stays open for 24 hours so people can sort out a missed item or a no-show, and then becomes read-only. Read-only conversations stay visible so they can be used when filing a report.

**Safety.** Users can report a message or the other user from inside the conversation, which uses the existing report process (UC-07). The system does not read, filter, or moderate messages (see Q6). A user who is suspended or banned cannot send messages. A deleted user (Q3) appears as "Deleted User" in old conversations.

## Reasoning
Students only need to coordinate logistics, and text covers that. Limiting messages to text and a short length keeps the feature simple to build and test, and avoids the privacy and moderation problems that come with images and files. Tying each conversation to a ride request prevents unsolicited contact between students, which matters for safety, and it keeps phone numbers out of the app, consistent with Q2 not collecting them. Allowing messages before acceptance helps riders decide whether a ride suits them, while the short window after a ride ends covers practical follow-up without leaving permanent open chat channels. Because the team does not actively moderate (Q6), the main safety tools are reporting and automatic suspension rather than message screening.

## Impact
- Requirements:
  - FR-10 should specify text-only, one-to-one messaging tied to a ride, with a 500 character limit.
  - Add a requirement that a conversation can only start from a ride join request or a response to a ride request.
  - Add a requirement that conversations become read-only after a decline or cancellation, or 24 hours after ride completion or cancellation.
  - Add a requirement that suspended or banned users cannot send messages (links to FR-01 and Q6).
  - FR-14 (reports) should allow reporting a message or user from a conversation.
- Use Cases:
  - UC-05 (Messaging) should show the main flow of opening a conversation from a ride request, sending and reading messages, and alternate flows for a declined or cancelled request, a read-only conversation, and a suspended sender.
  - UC-07 (Report Issues) should include reporting from within a conversation.
- Design/Architecture:
  - Add `Conversation` (ride, rider, driver, status, read-only date) and `Message` (conversation, sender, text, sent time) entities in PostgreSQL. Messages reference users in a way that allows anonymization after account deletion (Q3).
  - Add REST endpoints to list conversations, read a conversation, and send a message. Authorization checks must confirm the caller is one of the two participants and that the conversation is not read-only.
  - Use refresh or polling to fetch new messages. WebSockets are not needed for this version.
  - New-message notifications depend on the answer to Q15.
