Feature: Api

  Background: 
    * url "https://api.demoblaze.com"
    * path "/signup"

  Scenario Outline: create a user
    And request {"username": "#(username)", "password": "#(password)"}
    When method post
    Then status 200

    Examples:
    |username|password|
    |NiloA   |12345678|
    |Haarin  |12235789|


