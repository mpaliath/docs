Feature: App Launch

  Scenario: User opens the app for the first time
    Given The user has never opened the app after installing it
    When The user launches the app
    Then Show a simple search UI, centralized vertically and streched horizontally, with a (search) text box on the screen and a search button
    When The user enters a search string and hits the search button
    Then Show the search results from docs.microsoft.com corresponding to the search text

  Scenario: User relaunches the app
    Given The user has opened the app previously and completed at least one search
    Given App was killed/shutdown previously
    Then Show a simple UI, centralized vertically and streched horizontally, with a (search) text box on the screen and a search button
    And at the top left show a hamburger menu with 2 options 'Recent' and 'Clear'
    When the user touches 'Recent' a list of previous searches, replaces the search UI
    When the user touches 'Clear', all stored data is wiped and app behaves as if it is the first launch
