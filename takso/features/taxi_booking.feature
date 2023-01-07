Feature: Taxi Booking
    As a customer
    Such that I go to a destination
    I want to arrange a taxi ride

    Scenario: Booking via STRS' web page (with confirmation)
        Given the following taxis are on duty
            | username  | location       | status       |
            | peter88   | Juhan Liivi 2  | busy         |
            | Juhan     | Kalev 4        | available    |   
        # And I want go from "Juhan Liivi 2" to "Muuseumi tee 2"
        And I open STRS' web page
        # And I enter the booking information
        # When I submit the booking information
        # Then I should receive a confirmation message
