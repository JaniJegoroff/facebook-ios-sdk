Feature: Facebook
  As a Developer
  I want to demo Facebook login and logout utilising Calabash and Sikuli frameworks

  @login
  Scenario: Facebook login
    Given application is launched
      And Login screen is opened
    When I login to Facebook
    Then Main screen is displayed

  @logout
  Scenario: Facebook logout
    Given I am logged in to Facebook
    When I logout from Facebook
    Then Main screen is displayed
