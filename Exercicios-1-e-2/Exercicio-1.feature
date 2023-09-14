Feature: Test filter for user consult

    Scenario: Filter a user using all fields 
        Given Selected the type person, type name and email
        When Execute filter
        Then Only users with a corresponding all filter fields should be returned

    Scenario: Filter a user by name
        Given Only name field was filled
        When Execute filter
        Then Only users with a corresponding name should be returned

    Scenario: Filter a user by email
        Given Only email field was filled
        When Execute filter
        Then Only users with a corresponding email address should be returned

    Scenario: Filter a user by type person
        Given Only type person was fieled
        When Execute filter
        Then Only users with a corresponding type person should be returned

    Scenario: Clean filter fields
        Given Some filters is filled
        When When running clean
        Then It is expected that all filter fields will have their values removed



    Scenario: Filter user with conflicting filter values
        Given Was Selected incorrect type person for an email
        When Execute filter
        Then No user should be returned

    Scenario: Filter user with invalid email
        Given Was typed a incorrect email
        When Execute filter
        Then No user should be returned

    Scenario: Filter user without fill filter fields
        Given The filters are not filled
        When Execute filter
        Then No user should be returned

    Scenario: Cleaner filter without fill filter fields
        Given The filters are not filled
        When When running clean
        Then The filters fields must be empty
