Feature: Endpoint breeds test, method GET

    Scenario: Get a limit number of breeds 
        Given There are more than <limit> breeds registered
        When execute a request by GET method with a limit equal to <limit>
        Then <limit> breeds must be returned
        And The http status code must be 200
        Examples:
        | limit |
        |     3 |
        |     7 |
        |     9 |


    Scenario: Get a limit of breeds with not integer limit value
        Given There are breeds registered
        When execute a request by GET method, with a limit equal to 'teste'
        Then Shouldn't return any breed
        And The http status code must be 400


    Scenario: Get a limit of breeds with a negative integer
        Given There are breeds registered
        When execute a request by GET method, with a limit equal to -1
        Then Shouldn't return any breed
        And The http status code must be 404