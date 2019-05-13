# require 'selenium-webdriver'
# driver = Selenium::WebDriver.for :chrome

# Given('I open the app') do
#   driver.navigate.to "https://testing-angular-20f22.firebaseapp.com/"
# end

# When('The app page loads') do
#   expect(driver.find_element(:css => 'title')).to be_truthy
# end

# Then('The form is focused') do 
#   element = driver.find_element(:id, 'superForm').find_element(:name, 'title');
#   expect(element).to eq(driver.switch_to.active_element)
# end

# Given("I type {string} into the form") do |text|
#   element = driver.find_element(:id, 'superForm').find_element(:name, 'title');
#   element.send_keys(text)
# end

# When("I submit the form") do
#   form = driver.find_element(:id, 'superForm')
#   form.submit
# end

# Then("The form input is blank") do
#   element = driver.find_element(:id, 'superForm').find_element(:name, 'title');
#   expect(element.text).to eq('')
# end


# Then("{string} is displayed") do |text|
#   isVisable = driver.find_elements(:css, 'label.todo-title').any? do |element|
#     element.text === text
#   end
#   expect(isVisable).to be(true)
# end

# When("Remove button is clicked") do
#   driver.find_element(:css, 'button.destroy').click
# end

# Then("The label {string} is not displayed") do |text|
#   isVisable = driver.find_elements(:css, 'label.todo-title').any? do |element|
#     element.text === text
#   end
#   expect(isVisable).to be(false)
# end
