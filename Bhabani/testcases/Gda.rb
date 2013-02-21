class Crucible
     def self.login
       $driver.get$base_url
       $driver.find_element(:id, 'username').send_keys 'admin@crucible.com'
       $driver.find_element(:id, 'password').send_keys 'crucible#2012'
       $driver.find_element(:class, 'btn-inverse').click
       $driver.find_element(:class, 'btnPop').click
       Selenium::WebDriver::Support::Select.new($driver.find_element(:id, "OrganisationIndustryId")).select_by(:text, "Finance")

       first_name = Faker::Name.first_name
       $driver.find_element(:id, 'OrganisationName').send_keys first_name
       street_address = Faker::Address.street_address
       $driver.find_element(:id, 'OrganisationAddress').send_keys street_address
       #phone_number = Faker::PhoneNumber.phone_number
       #$driver.find_element(:id, 'OrganisationPhoneNumber').send_keys phone_number
       $driver.find_element(:id, 'OrganisationPhoneNumber').send_keys '9556943076'
       #$driver.find_element(:id, 'OrganisationEmail').send_keys 'bhabani53@gmail.com'
       $driver.find_element(:class, 'btn-inverse').click
       $driver.find_element(:id, 'OrganisationsLevel3LevelId').click
       $driver.find_element(:class, 'btn-inverse').click
       #Selenium::WebDriver::Support::Select.new($driver.find_element(:id, "function_select")).select_by(:text, "Marketing")
       #$driver.find_element(:id, 'function_text').send_keys 'Company'
       #$driver.find_element(:class, 'btn-inverse').click
       #$driver.find_element(:class, 'organisation').click

     end
end