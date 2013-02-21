class    Signup
  def self.signup
    $driver.get$base_url
    $driver.find_element(:id,'firstname').send_keys('Kumar')
    $driver.find_element(:id,'lastname').send_keys('Gaurav')
    $driver.find_element(:id,'reg_email__').send_keys('bhabani@weboniselab.com')
    $driver.find_element(:id,'reg_email_confirmation__').send_keys('bhabani@weboniselab.com')
    $driver.find_element(:id,'reg_passwd__').send_keys('bhabani123@')
    Selenium::WebDriver::Support::Select.new($driver.find_element(:id, "birthday_month")).select_by(:text, "Mar")
    Selenium::WebDriver::Support::Select.new($driver.find_element(:id, "birthday_day")).select_by(:text, "1")
    Selenium::WebDriver::Support::Select.new($driver.find_element(:id, "birthday_year")).select_by(:text, "1995")
    $driver.find_element(:id,'u_0_1').click
    $driver.find_element(:class,'signup_button ').click
    $driver.find_element(:link,'skip ').click

    #Authentication
    $driver.get$base_url2
    $driver.find_element(:class,'strong y-link-1').click




  end
  # To change this template use File | Settings | File Templates.
end