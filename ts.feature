Feature: Search and filter on bing.com to collect information about "Prowly Media Monitoring"

  Scenario: Search for "Prowly Media Monitoring" by news category
    Given I am on the search page of bing.com
    And I enter "Prowly Media Monitoring" in the search field
    When I apply applies the "News" filter
    Then I sholud see articles filtered by news category related to "Prowly Media Monitoring"
    And Each result should include the article title, publication date, and source

  Scenario: Search for "Prowly Media Monitoring" by video category
    Given I am on the search page of bing.com
    When I enter the phrase "Prowly Media Monitoring" in the search field
    And I apply applies the "Video" filter
    Then I should see relevant video related to "Prowly Media Monitoring"
    And Each result should include the video title, views,  publication date, and source

  Scenario: Search for "Prowly Media Monitoring" with all category
    Given I am on the search page of bing.com
    When I enter "Prowly Media Monitoring" in the search field
    And I am not applying any filters
    Then I should see a variety of relevant content related to "Prowly Media Monitoring"
    And Each result should belong to one of the following categories: News, Video, Images, etc.

    Examples:
      | Category |
      | News     |
      | Video    |
      | All      |

      
Feature: Use AI Chat on bing.com to collect information about "Prowly media monitoring module"

  Scenario: Initiate precise chat with copilot for "Prowly media monitoring module"
    Given I am on the search page of bing.com
    When I initiate a conversation with Copilot in a precise style
    And I ask for details about the "Prowly media monitoring module"
    Then Copilot should respond precise with technical details, system requirements, and compatibility information

  Scenario: Initiate balanced chat with copilot for "Prowly media monitoring module"
    Given I am on the Bing.com search page
    When I initiate a chat with Copilot using a balanced style
    And I ask for information about the "Prowly media monitoring module"
    Then Copilot should respond in a balanced and approachable style

  Scenario: Initiate creative chat with copilot for "Prowly media monitoring module"
    Given I am on the Bing.com search page
    When I initiate a chat with Copilot using a creative style
    And I seek detailed technical specifications and integration options for the "Prowly media monitoring module"
    Then Copilot should respond with appropriate information

    Examples:
      | Style   |
      | Precise |
      | Balanced|
      | Creative|
