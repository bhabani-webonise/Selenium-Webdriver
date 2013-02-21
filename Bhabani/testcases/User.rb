class   User
  def self.user

    $driver.get$base_url
    $driver.find_element(:id, 'username').send_keys 'anirban.bajaj@yopmail.com'
    $driver.find_element(:id, 'password').send_keys '123456'
    $driver.find_element(:class,' btn-inverse').click
    $driver.find_element(:class, 'btnThin').click
    first_name = Faker::Name.first_name
    $driver.find_element(:id, 'UserFirstName').send_keys first_name
    last_name = Faker::Name.last_name
    $driver.find_element(:id, 'UserLastName').send_keys last_name
    email = Faker::Internet.free_email
    $driver.find_element(:id, 'UserUsername').send_keys email
    $driver.find_element(:id, 'job_title').send_keys 'Manager'
    reporting_manager = Faker::Name.first_name
    $driver.find_element(:id, 'token-input-reporting_manager_id').send_keys reporting_manager
    Selenium::WebDriver::Support::Select.new($driver.find_element(:class, "levelSelector")).select_by(:text, "Consumer Business")
    $driver.find_element(:class, 'btnBlack').click
  end
  # To change this template use File | Settings | File Templates.
end