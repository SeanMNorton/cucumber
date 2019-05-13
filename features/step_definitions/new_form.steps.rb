require_relative '../pages/home.rb'

Given('I open the app') do
  @homepage = HomePage.new(@browser)
  @homepage.visit
end

When('The app page loads') do
  expect(@homepage.title).to be_truthy
end

Then('The form is focused') do 
  expect(@homepage.todo_form_title_input.focused?).to eq(true)
end

Given("I type {string} into the form") do |text|
  @homepage.todo_form_title_input.send_keys(text)
end

When("I submit the form") do
  @homepage.todo_form.submit
end

Then("The form input is blank") do
  expect(@homepage.todo_form_title_input.text).to eq('')
end

Then("{string} is displayed") do |text|
  expect(@homepage.todo_is_visable?(text)).to be(true)
end

When("Remove button is clicked") do
  @homepage.remove_todo_button.click
end

Then("The label {string} is not displayed") do |text|
  expect(@homepage.todo_is_visable?(text)).to be(false)
end
