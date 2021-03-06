#language:en
Feature:I can navigate to various locations starting from my own profile page
  In order to effectively use the site
  As an authenticated user
  I can navigate the site starting from my profile page
  
Background:   
  Given I am an authenticated user
  And I am on my User page
  And the Profile tab

@nav
Scenario: I can use tab navigation to navigate areas of my profile
  When I click the navigation tabs in the main content area (profile, edit, messages, feedback)
  Then I should see the corresponding content.

@nav
Scenario: I can reach the Edit Profile area by clicking the Update button
  When I click the Update button in the location sidebar
  Then I see the Edit tab

@nav
Scenario: I can reach the Edit Profile area by clicking the Upload your Picture link
  And I have not uploaded a profile picture
  When I click the "Upload your picture by editing your profile." link in the upper left
  Then I see the Edit tab.

Scenario: I can see a modal with my profile picture
  And I have uploaded a profile picture
  When I click on my profile picture under the WarmShowers Logo
  Then I see a modal with my profile picture

#Moved map/location scenarios to map.feature

#Moved scenario about feedback to feedback.feature

@nav
Scenario: I can see my personal website
  And I have entered a personal website url
  When I click the personal website link in the green profile summary area
  Then a new window or browser tab opens to display my website.

@nav
Scenario: I can reach the donation page
  When I click on the Donate Now button in the Donation sidebar
  Then I see the donation page.

#Language/translation scenario moved to language.feature
