# Q10 - Ride Matching Logic

## Question
How will the system determine whether a ride matches a rider's request?

## Final Answer
The system compares a ride offer and a ride request using the same trip details users already enter (FR-05) and the same limits defined for search filters in Q11. A ride is a **potential match** for a request only if it passes all four checks below. Matching suggests rides and requests to users. It never books anyone automatically, because the driver still accepts the rider (Q7).

1. **Date.** The ride's date must be the same calendar date as the request.
2. **Time.** The ride's departure time must fall inside the time window the rider gave (15-minute precision, e.g. 1:15 PM to 2:45 PM). If the rider gave a single time, the window is that time plus or minus 30 minutes.
3. **Location.** The ride's pickup location must be within 2 km of the rider's pickup location, and the ride's destination must be within 2 km of the rider's destination.
4. **Seats.** The ride must have at least as many available seats as the rider requested. Full rides are never matches.

Rides and requests that are cancelled, expired, or already in the past are excluded.

**Ranking.** Matches are sorted by combined distance (pickup distance plus destination distance), closest first. Ties are broken by how close the departure time is to the middle of the rider's window, then by the earliest posted.

**Matching in both directions.** The same rules apply when a driver browses ride requests, so a driver sees requests that fit their posted ride. The system does not need to match exact addresses, only addresses within the 2 km limit.

**Recurring schedules (FR-07 to FR-09).** A rider's recurring need and a driver's recurring availability are a **potential schedule match** when they share at least one day of the week, and the rider's time window overlaps the driver's availability window on that day by at least 15 minutes. The location and seat checks above apply as well. The system lists the compatible days and times for each match, and the rider chooses whom to contact.

## Reasoning
Reusing the Q11 filter values keeps what a rider searches for and what the system calls a "match" consistent. A rider should never see a match that the search filters would have hidden. Requiring date, time, location, and seats means every suggested ride is one the rider could actually take. The 2 km radius allows for pickup points on or near campus or an apartment complex without requiring identical addresses. Using a window rather than an exact time reflects that students are usually flexible by a few minutes.

Keeping matching as suggestion only avoids overbooking and leaves the final choice to the driver and rider, which fits the project's scope: no automatic assignment, route optimization, or GPS tracking. Sorting by combined distance puts the most convenient rides first without a complicated scoring system the team would have to tune and explain.

## Impact
- Requirements:
  - FR-05: pickup, destination, date, time window, and seats must be stored in a form that can be compared (coordinates or geocoded address, not free text only).
  - FR-06: search results must use the match rules above.
  - FR-09: define "compatible" as a shared day with at least 15 minutes of overlapping time, plus the location and seat checks.
  - Add a requirement that expired, cancelled, past, and full rides are excluded from matches.
- Use Cases:
  - UC-03 (Search and Manage Ride Requests): step 4, "the system searches for available rides matching the entered criteria", should reference these four checks, and the "no matching rides" alternate flow applies when none pass.
  - UC-04 (Recurring Schedules): step 7, "compares the rider's needs against availability", should use the day and time overlap rule.
  - UC-02 (Post and Manage Ride Offers): drivers see matching requests using the same rules.
- Design/Architecture:
  - Ride and request records need latitude and longitude, date, start and end time, seats, and status.
  - Add a matching service that filters by date, time window, seats, and status first, then applies the distance check (haversine distance, or PostGIS if adopted) and sorts by combined distance.
  - Index date and status in PostgreSQL so matching stays fast. PostGIS is optional and only worth adding if the distance filtering becomes a bottleneck.
  - Distance uses straight-line distance, not driving distance, to avoid depending on an external routing service.
