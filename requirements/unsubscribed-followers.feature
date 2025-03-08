Feature: Unsubscribed Followers Tracking
  As an Instagram account owner or social media manager
  I want to track and analyze unsubscribed (lost) followers over time
  So that I can understand follower churn and adjust content strategies accordingly

  Background:
    Given the Instagram account is connected to the metrics app
    And the system has stored previous snapshots of the follower list

  Scenario: Detect unsubscribed followers between snapshots
    Given a previous snapshot of the follower list is available
    And a current snapshot of the follower list is available
    When the system compares the current snapshot with the previous snapshot
    Then it should identify users present in the previous snapshot but missing in the current snapshot as unsubscribed followers
    And it should display the total count of unsubscribed followers
    And it should calculate the unsubscribe rate based on the total followers

  Scenario: Analyze unfollow trends over time
    Given historical snapshots of the follower list exist for multiple days
    When the system aggregates the data from these snapshots
    Then it should generate a trend graph showing daily, weekly, and monthly unfollow counts
    And it should highlight significant spikes in unfollow activity

  Scenario: Correlate unfollow events with specific content
    Given a significant content event (e.g., a controversial post) occurred on a specific date
    And snapshots taken before and after the event are available
    When the system analyzes the change in follower count around the event date
    Then it should flag the event as a potential trigger for increased unfollows
    And provide a report correlating content events with unfollow trends

  Scenario: Provide insights on unsubscribed followers' profiles
    Given unsubscribed followers have been identified
    When the system retrieves available demographic and engagement data for these users
    Then it should display insights such as age, gender, and past engagement levels of lost followers

  Scenario: Compare unfollow trends with competitors (optional)
    Given competitor Instagram accounts data is available
    When the system compares the unfollow trends of the user's account with competitor benchmarks
    Then it should provide comparative metrics and insights for strategic adjustments
