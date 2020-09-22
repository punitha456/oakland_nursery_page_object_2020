Feature: Oakland vegetable Search

  Scenario: Verify the user can search for the vegetable
    Given user is on vegetable search page
    When user search for the vegetable carrot
    Then user should see the results related to carrot
    And verify the search results count is not more than 10


  Scenario Outline: Verify the user can search for the different vegetable
    Given user is on vegetable search page
    When user search for the vegetable <vegetable_name>
    Then user should see the results related to <vegetable_name>
    And verify the search results count is not more than <no_of_result>

    Examples:
      |vegetable_name|no_of_result|
      |carrot       | 10        |
      |beans  | 10        |

  Scenario: Verify user can add the vegetables to wish list
    Given user is on vegetable search page
    When user search for the vegetable carrot
    And user add the first result to the wish list
    Then verify the added vegetable is showing under wish list page
#    Then verify the Chater's Double carrot Pink Hollyhock vegetable is showing under wish list page

  Scenario: Verify user can modify the item quantity in the wish list
    Given user is on vegetable search page
    When user search for the vegetable carrot
    And user add the first result to the wish list
    And user modifies the quantity of the wish list item
    Then verify user can see the updated quantity

  Scenario: verify the user can empty the wish list
    Given user is on vegetable search page
    When user adds the vegetable carrot to the wish list
    And user empty the wish list
    Then user should see the confirmation message "Your Wish List is currently empty!"

  Scenario: get the vegetable search details - vegetable Type, vegetable Height, Flower Height, Spread and Sunlight
    Given user is on vegetable search page
    When user search for the vegetable carrot
    Then user should see the results related to carrot
    And get the details of the vegetable

  Scenario: Verify the vegetable search details - vegetable Type, vegetable Height, Flower Height, Spread and Sunlight are correct
    Given user is on vegetable search page
    When user search for the vegetable carrot
    Then user should see the results related to carrot
    And verify the details of the vegetable
      |vegetable_details|vegetable_value|
      |vegetable Type   |perennial  |
      | vegetable Height| 4 feet    |
      |Flower Height|6 feet     |
      |Spread       |24 inches  |
      |Sunlight     |full sun