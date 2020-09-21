
Feature: Oakland Plant Search

  Scenario: Verify the user can search for the plant
    Given user is on plant search page
    When user search for the plant Rose
    Then user should see the results related to Rose
    And verify the search results count is not more than 10


  Scenario Outline: Verify the user can search for the different plant
    Given user is on plant search page
    When user search for the plant <plant_name>
    Then user should see the results related to <plant_name>
    And verify the search results count is not more than <no_of_result>

    Examples:
  |plant_name|no_of_result|
  |Rose       | 10        |
  |Sunflower  | 10        |

  Scenario: Verify user can add the plants to wish list
    Given user is on plant search page
    When user search for the plant Rose
    And user add the first result to the wish list
    Then verify the added plant is showing under wish list page
#    Then verify the Chater's Double Rose Pink Hollyhock plant is showing under wish list page

  Scenario: Verify user can modify the item quantity in the wish list
    Given user is on plant search page
    When user search for the plant Rose
    And user add the first result to the wish list
    And user modifies the quantity of the wish list item
    Then verify user can see the updated quantity

  Scenario: verify the user can empty the wish list
    Given user is on plant search page
    When user adds the plant Rose to the wish list
    And user empty the wish list
    Then user should see the confirmation message "Your Wish List is currently empty!"

  Scenario: get the plant search details - Plant Type, Plant Height, Flower Height, Spread and Sunlight
    Given user is on plant search page
    When user search for the plant Rose
    Then user should see the results related to Rose
    And get the details of the plant

  Scenario: Verify the plant search details - Plant Type, Plant Height, Flower Height, Spread and Sunlight are correct
    Given user is on plant search page
    When user search for the plant Rose
    Then user should see the results related to Rose
    And verify the details of the plant
    |plant_details|plant_value|
    |Plant Type   |perennial  |
    | Plant Height| 4 feet    |
    |Flower Height|6 feet     |
    |Spread       |24 inches  |
    |Sunlight     |full sun