Feature: Sign up

As an unauthorized user
I want to signup with my details
So that I can login
Background:
  Given I am on the signin page
	And I click "Sign up"

Scenario: Password doesn't match confirmation
	
	Given I am on the signup page
  When I fill in "Email" with "sravan44@gmail.com"
  And I fill in "user_password" with "Secret"
  And I fill in "user_password_confirmation" with "Password"
  And I press "Sign up"
  Then the Sign up form should be shown again
  Then I should see "Password doesn't match confirmation"

  

Scenario: Sucessfully signup
	
	Given I am on the signup page
  When I fill in "Email" with "sravan44@gmail.com"
  And I fill in "user_password" with "Secret"
  And I fill in "user_password_confirmation" with "Secret"
  And I press "Sign up"
  
  And I should be registered


 