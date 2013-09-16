Given /^I click "(.*?)"$/ do |arg1|
  click_link(arg1.to_s)
end

Given /^I am on the signin page$/ do
  visit "/users/sign_in"  
end



Given /^I am on the signup page$/ do
  visit new_user_registration_path

end

When /^I fill in "(.*?)" with "(.*?)"$/ do |arg1, arg2|
  #arg1
  #arg2
  fill_in(arg1, :with => arg2)
  
end

When /^I press "(.*?)"$/ do |button|
  click_button(button)  
  
end

Then /^the Sign up form should be shown again$/ do
  #visit new_user_registration_path
   get "/users/sign_up"
  
end
Then /^I create the user $/ do
# u = User.new(:email => "hbdev123@gmail.com",
#                  :password => "hbdev123",
#                  :password_confirmation => "hbdev123")
#     u.save!
#user  = Factory.build(:user)
user=FactoryGirl.create(:user)
category=FactoryGirl.create(:category)
end
Then /^I fill in the following:$/ do |table|
  # table is a Cucumber::Ast::Table
  #pending # express the regexp above with the code you wish you had
  #table.each do arg
    #print table
    table.hashes.each do |arg|
      arg.each do|x|
       #  puts x[0]
       #  puts x[1]
       fill_in( x[0], :with=>x[1])
      end
    end
  #end
  sleep(0)
end

Then /^I attach an image to "(.*?)"$/ do |arg1|
   #attach_file(arg1, image_path)
   attach_file('Product img', '/home/hb/Downloads/jul-13-Birds-calendar-1920x1080.jpg')
end

Then /^I select "(.*?)" from "(.*?)"\)$/ do |arg1, arg2|
  select(arg1.to_s , :from=>arg2)
end

Then /^I create the user with "(.*?)" and "(.*?)"$/ do |arg1, arg2|
end
Then /^I signin as "(.*?)" and "(.*?)"$/ do |arg1, arg2|
  step %{I create the user }

  
  fill_in("Email", :with => arg1)
  fill_in("Password", :with => arg2)
  
end

 Then /^I should see "(.*?)"$/ do |arg1|
   #page.should have_selector('#notice',:notice=>arg1)
   page.should have_content(arg1)
  #   assert_match /#{arg1}/m, @response.body
   #    #response.body.should =~ /#{text}/m
  sleep(3)
  end

Then /^I should be registered$/ do
   get "/" 
  
end

Then /^I should be in the home page$/ do
  get "/" 
  sleep(3)
end

Then /^I should be in the Product page$/ do
  get "/products" 
  sleep(3)
end

