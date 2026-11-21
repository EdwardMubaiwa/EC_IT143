/*
    Assignment: W4.2 - T-SQL Data Manipulation: Answer-Focused Approach
    Community: Tourism
    Author: EM
    Purpose: Demonstrate the eight-step answer-focused T-SQL workflow.
    Database: MyCommunitiesDB
*/
        /*
        STEP 2 - BEGIN CREATING AN ANSWER
        Current understanding:
        The packages table identifies each package. Departures are connected to packages through package_id, and bookings are connected to departures through departure_id. LEFT JOINs keep packages even when they have no bookings. COUNT of the booking ID gives the number of bookings per package.

        Next logical step:
        Query the source tables, check the relationship between them,
        and calculate the requested result.
        */
