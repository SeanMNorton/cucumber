class HomePage
  
  def initialize(browser)
    @browser = browser
  end
  
  def visit
    @browser.goto("https://testing-angular-20f22.firebaseapp.com/")
  end

  def title
    @browser.title
  end

  def todo_form_title_input
    todo_form.input(name: 'title')
  end

  def todo_form
    @browser.form(id: 'superForm')
  end

  def todo_is_visable?(todo_label)
    return false if !@browser.ul(class: 'todo-list').exist?

    @browser.ul(class: 'todo-list').any? do |todo|
      todo.label.text === todo_label
    end
  end

  def remove_todo_button
    @browser.button(class: 'destroy')
  end

end