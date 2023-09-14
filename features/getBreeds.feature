Feature: Endpoint breeds test, method GET

    Background:
        Given As long as you have at least 10 registered breeds

    Scenario: Get a limit number of breeds        
        When execute a request by GET method with a limit equal to <limit>
        Then <limit> breeds must be returned
        And The http status code must be 200
        Examples:
        | limit | 
        |     3 |
        |     7 |
        |     9 |


    Scenario: Get a limit of breeds with not integer limit value
        When execute a request by GET method with a limit equal to <parameter>
        Then Shouldn't return any breed
        And The http status code must be <statusCode>
        Examples:
        | parameter | statusCode |
        |   bhjkb   |     400    |
        |    -1     |     404    |