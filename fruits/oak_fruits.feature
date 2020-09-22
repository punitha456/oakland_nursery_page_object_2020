Feature: Oakland fruit Search

  Scenario: Verify the user can search for the fruit
    Given user is on fruit search page
    When user search for the fruit Apple
    Then user should see the results related to Apple
    And verify the search results count is not more than 10


  Scenario Outline: Verify the user can search for the different fruit
    Given user is on fruit search page
    When user search for the fruit <fruit_name>
    Then user should see the results related to <fruit_name>
    And verify the search results count is not more than <no_of_result>

    Examples:
      |fruit_name|no_of_result|
      |Apple       | 10        |
      |orange  | 10        |

  Scenario: Verify user can add the fruits to wish list
    Given user is on fruit search page
    When user search for the fruit Apple
    And user add the first result to the wish list
    Then verify the added fruit is showing under wish list page
#    Then verify the Chater's Double Apple Pink Hollyhock fruit is showing under wish list page

  Scenario: Verify user can modify the item quantity in the wish list
    Given user is on fruit search page
    When user search for the fruit Apple
    And user add the first result to the wish list
    And user modifies the quantity of the wish list item
    Then verify user can see the updated quantity

  Scenario: verify the user can empty the wish list
    Given user is on fruit search page
    When user adds the fruit Apple to the wish list
    And user empty the wish list
    Then user should see the confirmation message "Your Wish List is currently empty!"

  Scenario: get the fruit search details - fruit Type, fruit Height, Flower Height, Spread and Sunlight
    Given user is on fruit search page
    When user search for the fruit Apple
    Then user should see the results related to Apple
    And get the details of the fruit

  Scenario: Verify the fruit search details - fruit Type, fruit Height, Flower Height, Spread and Sunlight are correct
    Given user is on fruit search page
    When user search for the fruit Apple
    Then user should see the results related to Apple
    And verify the details of the fruit
      |fruit_details|fruit_value|
      |fruit Type   |perennial  |
      | fruit Height| 4 feet    |
      |Flower Height|6 feet     |
      |Spread       |24 inches  |
      |Sunlight     |full sun