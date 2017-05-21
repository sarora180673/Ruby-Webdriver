require "selenium-webdriver"
 
#Chrome browser instantiation
prefs = {
  'credentials_enable_service' => false,
  'profile.password_manager_enabled' => false
}

driver = Selenium::WebDriver.for :chrome, prefs: prefs
#driver = Selenium::WebDriver.for :chrome
 
#Loading the assertselenium URL
driver.navigate.to "https://www.tokopedia.com"
 
#Clicking on the Follow link present on the assertselenium home page
FollowButton  = driver.find_element(:link, "Daftar")
FollowButton.click
 
#Typing the Name
FullName = driver.find_element(:id, "full-name")
FullName.send_keys "xxx hdjfhdsjh"

sleep 5
 
#Typing Phone Number 
Phone = driver.find_element(:id, "phone")
Phone.send_keys "1234-5678-1111"

sleep 5 

#Typing Email 
Email = driver.find_element(:id, "email")
Email.send_keys "xxx@yyy.in"

sleep 5 

#Typing Password 
Password = driver.find_element(:id, "password")
Password.send_keys "12345678"

sleep 5 

#Selecting Gender 
driver.find_element(:id, "gender-female").click

sleep 5 
#wait = Selenium::WebDriver::Wait.new(:timeout => 10)

#Selecting Date 
driver.find_element(:id, "sel-date").find_element(:css, "option[value='2']").click

sleep 5 

#Selecting Month 
driver.find_element(:id, "sel-month").find_element(:css, "option[value='2']").click
sleep 5 

#Selecting Year 
driver.find_element(:id, "sel-year").find_element(:css, "option[value='1986']").click
sleep 5 

#Clicking on the Submit Button
SubmitButton = driver.find_element(:id, "register-button")
SubmitButton.click

#wait = Selenium::WebDriver::Wait.new(:timeout => 15)
 
#Asserting whether the Login is pass or Fail 
#SuccessMessage = driver.find_element(:link, "Masuk")
#if "Masuk.".eql? SuccessMessage.text
#puts "Successfully Logged in"
#else
# puts "Failed"
#end
 
#Quitting the browser
#wait = Selenium::WebDriver::Wait.new(:timeout => 15)
#driver.quit
