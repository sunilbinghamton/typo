Feature: Manage Categories
  As a blog administrator
  In order to group the blog entries by themes
  I want to be able to add and edit categories in my blog
  
  Background:
    Given the blog is set up
    And I am logged into the admin panel
    
    Scenario: Successfully create a new category
      Given I am on the new categorie page
      When I fill in "category_name" with "Foobar"
      And I press "Save"
      Then I should see "Foobar"
      
    Scenario: Successfully edit an existing category
      Given I am on the new categorie page
      When I follow "Edit"
      And fill in "category_description" with "Lorem Ipsum"
      And I press "Save"
      Then I should see "Lorem Ipsum"