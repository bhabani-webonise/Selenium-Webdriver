class   Demo

  def self.new


  $driver.get$base_url
  $driver.find_element(:id, 'username').send_keys 'admin@crucible.com'
  $driver.find_element(:id, 'password').send_keys 'crucible#2012'
  $driver.find_element(:class, 'btn-inverse').click
  $driver.find_element(:class, 'parameters').click
  $driver.find_element(:link, 'Development Area').click
  $driver.find_element(:link, 'Competency Structure').click
  $driver.find_element(:link, 'Behavioral Structure').click
  $driver.find_element(:link, 'Core Theme Structure').click


               #Core Theme Structure
  $driver.find_element(:link, 'Core Theme Structure').click
  $driver.find_element(:class, 'btnPop').click
  $driver.find_element(:id, 'OrganisationName').send_keys name
  $driver.find_element(:id, 'CoreThemeName').send_keys 'crucible#2012'
  $driver.find_element(:id, 'CoreThemeDescription').send_keys 'crucible#2012'
  $driver.find_element(:id, 'OrganisationAddress').send_keys Theme_
  Selenium::WebDriver::Support::Select.new($driver.find_element(:id, "CoreThemeCategoryId")).select_by(:text, "Building relationships1")
  $driver.find_element(:class, 'btn-inverse').click

    def RanDom
      require 'selenium-webdriver'
      require 'rubygems'
      driver = Selenium::WebDriver.for :chrome


      monthArray = ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sept","Oct","Nov","Dec"]
      ran = rand(0..11)
      Selenium::WebDriver::Support::Select.new(driver.find_element(:id, "birthday_month")).select_by(:text, monthArray[ran])
      #Random Generation of month
      random= rand(1..12)
      select_month = driver.find_element(:id,"birthday_month")
      month_options = select_month.find_elements(:tag_name,"option")
      month_options[random].click
      #Random Generation of Year 1905 to 2013
      random= rand(1905..2013)
      select_month = driver.find_element(:id,"birthday_year")
      month_options = select_month.find_elements(:tag_name,"option")
      month_options[random].click
      #Random Generation of  Day 0 to 31
      random= rand(0..31)
      select_month = driver.find_element(:id,"birthday_day")
      month_options = select_month.find_elements(:tag_name,"option")
      month_options[random].click
    end
  # To change this template use File | Settings | File Templates.
  end
end
