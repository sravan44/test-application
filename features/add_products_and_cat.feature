Feature: Sign In
As an authorized user
I want to signin with my details
So that I can controll the products
Background:
  

 Scenario: successfully login
 Given I am on the signin page
   Then I signin as "hbdev123@gmail.com" and "hbdev123"
   And I press "Sign in"
   Then I should be in the home page

 Scenario: Adding a project
 Given I am on the signin page
   Then I signin as "hbdev123@gmail.com" and "hbdev123"
   And I press "Sign in"
   Then I should be in the home page
   And I click "Products"
   Then I should be in the Product page
   And I click "New Product"
   And I attach an image to "/home/hb/Pictures/Products/apple.jpg"
   And I fill in the following:
  		| 	Name         | Description    |		Price	|No of items 	|
      	|	xyz    	     |     hello 	  |     5789    |      23	    |
   And I select "sports" from "Category")
   And I press "Save"

      
   