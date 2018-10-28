Feature: IGIC Calculation

  Background:
    Given I have an IGIC calculator

  @ok
  Scenario: Canarian zero IGIC
    When tax is calculated for "bread" with 1 price
    Then the result should be 1

  @ok
  Scenario: Canarian reduced rate IGIC
    When tax is calculated for "car" with 15000 price
    Then the result should be 15450

  @ok
  Scenario: Canarian general rate IGIC
    When tax is calculated for "bike" with 150 price
    Then the result should be 160,5

  @ok
  Scenario Outline: Canarian incremented rate IGIC VAT
    When tax is calculated for "<product>" with <price> price
    Then the result should be <result>

    Examples:
      | product | price  | result |
      |  boat   |  10000 |  10950 |
      |  wine   |  6     |  6,81  |

  Scenario: Canarian special rate IGIC
    When tax is calculated for "tobaco" with 10 price
    Then the result should be 12

  @ko
  Scenario: Product with non-existent rate IGIC
    When tax is calculated for "cinema" with 100 price
    Then the product rate is not found