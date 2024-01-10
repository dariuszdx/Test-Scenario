Feature: Search and filter

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
