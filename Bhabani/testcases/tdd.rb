class    Ttd

  #Test case for Creating a Job Role

  def self.jobrole
    $driver.get$base_url4
    $driver.find_element(:id,'username').send_keys'anirban.vodafone@yopmail.com'
    $driver.find_element(:id,'password').send_keys'123456'
    $driver.find_element(:class,'btn-inverse').click
    $driver.find_element(:class,'jobRolesIcon').click
    $driver.find_element(:class,'btnThin').click
    $driver.find_element(:id,'JobRoleName').send_keys'Chief Technology Officer'
    Selenium::WebDriver::Support::Select.new($driver.find_element(:class, "levelSelector")).select_by(:text, "Telecom")
     end
   #Selenium::WebDriver::Support::Select.new($driver.find_element(:class, "levelSelector")).select_by(:text, "Division 1")
   #Selenium::WebDriver::Support::Select.new($driver.find_element(:class, "levelSelector")).select_by(:text, "Online")
   #Selenium::WebDriver::Support::Select.new($driver.find_element(:class, "levelSelector")).select_by(:text, "Marketing")
   #Selenium::WebDriver::Support::Select.new($driver.find_element(:class, "levelSelector")).select_by(:text, "India")
   #Selenium::WebDriver::Support::Select.new($driver.find_element(:class, "levelSelector")).select_by(:text, "Midlands")
   #Selenium::WebDriver::Support::Select.new($driver.find_element(:class, "levelSelector")).select_by(:text, "Birmingham")

    #Test case for Select Behaviours capabilities
  def self.behaviour
    $driver.get$base_url4
    $driver.find_element(:id,'username').send_keys'anirban.vodafone@yopmail.com'
    $driver.find_element(:id,'password').send_keys'123456'
    $driver.find_element(:class,'btn-inverse').click
    $driver.find_element(:class,'jobRolesIcon').click
    $driver.find_element(:class,'btnThin').click

   # $driver.find_element(:id,'JobRoleName').send_keys'Junior SManager'
    name = Faker::Name.first_name
    $driver.find_element(:id, 'JobRoleName').send_keys name
    Selenium::WebDriver::Support::Select.new($driver.find_element(:class, "levelSelector")).select_by(:text, "Telecom")
    $driver.find_element(:class,'btnBlack').click

    $driver.find_element(:class,'btnBlack ').click
    #$driver.find_element(:class,'btnBlack').click
  end

  #Test script for Parameters & Settings
  def self.quality
    $driver.get$base_url4
    $driver.find_element(:id,'username').send_keys'anirban.vodafone@yopmail.com'
    $driver.find_element(:id,'password').send_keys'123456'
    $driver.find_element(:class,'btn-inverse').click
    $driver.find_element(:class,'paraSetIcon').click
    $driver.find_element(:class,'editIcon').click
    $driver.find_element(:class,'competencyCheckbox checkboxes').click
    $driver.find_element(:id,'btnSave').click
    $driver.find_element(:class,'btnThin').click
    $driver.find_element(:class,'daCheckBox').click
    $driver.find_element(:class,'btnBlack').click

    $driver.find_element(:id,'btnSave').click
    $driver.find_element(:id,'backBtn').click
    $driver.find_element(:id,'btnThin').click
    $driver.find_element(:id,'DaOrganisationsProduct11category_name_id').click
    $driver.find_element(:id,'13').click
    $driver.find_element(:id,'btnBlack').click


  end

  #Test script for Invite User

  def self.inviteuser
    $driver.get$base_url4
    $driver.find_element(:id,'username').send_keys'anirban.vodafone@yopmail.com'
    $driver.find_element(:id,'password').send_keys'123456'
    $driver.find_element(:class,'btn-inverse').click
    $driver.find_element(:class,'jobRolesIcon').click
    $driver.find_element(:link,'Click Here to Complete').click
    $driver.find_element(:id,'Continue').click

  end

  #Test script For Change Password
 def self.changePassword
  $driver.get$base_url4
  $driver.find_element(:id,'username').send_keys 'anirban.vodafone@yopmail.com'
  $driver.find_element(:id,'password').send_keys'anirban12345@'
  $driver.find_element(:class,'btn-inverse').click
  $driver.find_element(:id,'drop1').click
  $driver.find_element(:link,'Change Password').click
  $driver.find_element(:id,'oldPassword').send_keys 'anirban123456@'
  $driver.find_element(:id,'newPassword').send_keys '12345'
  $driver.find_element(:id,'confirmPassword').send_keys '12345'
  $driver.find_element(:class,'btnBlack ').click

 end
  #Test script for View Job Role

  def self.ViewJobRole
    $driver.get$base_url4
    $driver.find_element(:id,'username').send_keys 'anirban.vodafone@yopmail.com'
    $driver.find_element(:id,'password').send_keys'anirban12345@'
    $driver.find_element(:class,'btn-inverse').click
    $driver.find_element(:class,'jobRolesIcon').click
    $driver.find_element(:class,'viewBtn').click
    $driver.find_element(:link,'Questions').click
    $driver.find_element(:class,'tab').click
    $driver.find_element(:link,'Targets').click
    $driver.find_element(:link,'Invited Users').click
    $driver.find_element(:link,'Progress').click
    $driver.find_element(:class,'backBtn').click
  end

  #Test script to view Activities and Alerts

  def self.Activities
    $driver.get$base_url4
    $driver.find_element(:id,'username').send_keys 'anirban.vodafone@yopmail.com'
    $driver.find_element(:id,'password').send_keys'anirban12345@'
    $driver.find_element(:class,'btn-inverse').click
    $driver.find_element(:class,'datshboardIcon').click
    $driver.find_element(:link,'View All').click
    $driver.find_element(:link,'2').click
    $driver.find_element(:link,'3').click
    $driver.find_element(:link,'4').click
    $driver.find_element(:link,'<< previous').click
    $driver.find_element(:link,'Back').click
  end

  #Test script for  Edit Profile User Details

  def self.editProfile
  $driver.get$base_url4
  $driver.find_element(:id,'username').send_keys 'anirban.vodafone@yopmail.com'
  $driver.find_element(:id,'password').send_keys'anirban12345@'
  $driver.find_element(:class,'btn-inverse').click
  $driver.find_element(:class,'settingsDropdown').click
  puts "test1"
  $driver.find_element(:link,'Edit Profile').click
  $driver.find_element(:id, 'image').send_keys "C:\\Users\\Admin\\Desktop\\Images\\images.jpg"
  puts "test2"
  $driver.find_element(:id, 'UserFirstName').send_keys 'Anirban'
  $driver.find_element(:id, 'UserLastName').send_keys 'Sinha'
  #$driver.find_element(:id,'UserLastName').send_keys 'Shankar'
  $driver.find_element(:class,'btnBlack').click
  $driver.find_element(:class,'usersIcon').click
  end

  def self.CreateRole
    $driver.get$base_url4
    $driver.find_element(:id,'username').send_keys 'anirban.vodafone@yopmail.com'
    $driver.find_element(:id,'password').send_keys'anirban12345@'
    $driver.find_element(:class,'btn-inverse').click
    $driver.find_element(:class,'jobRolesIcon').click
    $driver.find_element(:link, "Create Job Role").click
    jobRole = Faker::Name.first_name
    $driver.find_element(:id, 'JobRoleName').send_keys jobRole
    Selenium::WebDriver::Support::Select.new($driver.find_element(:id, "0")).select_by(:text, "Telecom")
    $driver.find_element(:class,'btnBlack').click
     puts "here"
    elem=$driver.find_element(:name,'data[DaJobRole][7][da_organisations_product_id]')
    puts "element is --"
    puts elem
    $driver.find_element(:id,'165').click
    puts "sucessful"
    $driver.find_element(:class,'nextButton').click
    puts "Questions"
    $driver.find_element(:xpath, ".//*[@id='JobRolesStatement2StatementId']").click
    puts "First"
    $driver.find_element(:class,'noSpaceRight').click
    puts "Dropdown selection started"
    $driver.find_element(:xpath, "//form[@id='JobRolesStatementEditForm']/div[2]/div[2]/div[1]/div/span").click
    Selenium::WebDriver::Support::Select.new($driver.find_element(:id, "point0")).select_by(:text, "Below Expectations")
    $driver.find_element(:xpath, "//form[@id='JobRolesStatementEditForm']/div[2]/div[2]/div[2]/div/span").click
    Selenium::WebDriver::Support::Select.new($driver.find_element(:id, "point1")).select_by(:text, "Meets Expectations")
    $driver.find_element(:xpath, "//form[@id='JobRolesStatementEditForm']/div[2]/div[2]/div[3]/div/span").click
    Selenium::WebDriver::Support::Select.new($driver.find_element(:id, "point2")).select_by(:text, "Average Expectations")
    $driver.find_element(:xpath, "//form[@id='JobRolesStatementEditForm']/div[2]/div[2]/div[4]/div/span").click
    Selenium::WebDriver::Support::Select.new($driver.find_element(:id, "point3")).select_by(:text, "Exceeds Expectations")
    $driver.find_element(:xpath, ".//*[@id='JobRolesStatementEditForm']/div[2]/div[2]/div[5]/div[1]/span").click
    Selenium::WebDriver::Support::Select.new($driver.find_element(:id, "point4")).select_by(:text, "Outstanding Expectations")
    $driver.find_element(:id, "JobRolesStatementsResponse4Response").send_keys "Outstanding Response"
    puts "Drop down selection ends"
    $driver.find_element(:xpath, ".//*[@id='JobRolesStatementEditForm']/div[2]/div[3]/input[3]").click
    puts "Dropdown selection ended"

    $driver.find_element(:id, "0").click
    $driver.find_element(:xpath, "(//input[@id='0'])[1]").click
    $driver.find_element(:xpath, "(//input[@id='0'])[2]").click
    $driver.find_element(:xpath, "(//input[@id='0'])[3]").click
    $driver.find_element(:xpath,".//*[@id='Continue']").click
  end
  def self.InviteUser
   $driver.get$base_url4
   $driver.find_element(:id,'username').send_keys 'anirban.vodafone@yopmail.com'
   $driver.find_element(:id,'password').send_keys'anirban12345@'
   $driver.find_element(:class,'btn-inverse').click
   $driver.find_element(:class,'jobRolesIcon').click
    $driver.find_element(:class,'btn').click
  end

  def self.checkBox
    $driver.get$base_url4
    $driver.find_element(:id,'username').send_keys 'anirban.vodafone@yopmail.com'
    $driver.find_element(:id,'password').send_keys'anirban12345@'
    $driver.find_element(:class,'btn-inverse').click
    $driver.find_element(:class,'jobRolesIcon').click
    $driver.find_element(:xpath,"html/body/section/section[1]/section/div/div[3]/div/ul/li[1]/a").click
    $driver.find_element(:id, "0").click
    $driver.find_element(:xpath, "(//input[@id='0'])[2]").click
    $driver.find_element(:xpath, "(//input[@id='0'])[3]").click
    $driver.find_element(:xpath, "(//input[@id='0'])[4]").click
    $driver.find_element(:xpath,".//*[@id='Continue']").click
  end
  def self.FilterUser
    $driver.get$base_url4
    $driver.find_element(:id,'username').send_keys 'anirban.vodafone@yopmail.com'
    $driver.find_element(:id,'password').send_keys'anirban12345@'
    $driver.find_element(:class,'btn-inverse').click
    $driver.find_element(:class,'usersIcon').click
    $driver.find_element(:id,'ProductsUserFilter').click
    puts "Select Dropdown"
    Selenium::WebDriver::Support::Select.new($driver.find_element(:class, "cstSelList")).select_by(:text, "Name")
    puts "Dropdown selected"
    $driver.find_element(:name,'title').click
    $driver.find_element(:name,'title').send_keys 'Virendra'
    $driver.find_element(:class,'searchIcon').click
    Selenium::WebDriver::Support::Select.new($driver.find_element(:class, "cstSelList")).select_by(:text, "Employee id")
    $driver.find_element(:name,'title').click
    $driver.find_element(:name,'title').clear
    $driver.find_element(:name,'title').send_keys 'wbsspl'
    $driver.find_element(:class,'searchIcon').click
    Selenium::WebDriver::Support::Select.new($driver.find_element(:class, "cstSelList")).select_by(:text, "ManagerName")
    $driver.find_element(:name,'title').click
    $driver.find_element(:name,'title').clear
    $driver.find_element(:name,'title').send_keys 'Sau'
    $driver.find_element(:class,'searchIcon').click
    #Selenium::WebDriver::Support::Select.new($driver.find_element(:id, "ProductsUserFilter")).select_by(:text, "Employee id")
    #Selenium::WebDriver::Support::Select.new($driver.find_element(:id, "ProductsUserFilter")).select_by(:text, "Email")
    #Selenium::WebDriver::Support::Select.new($driver.find_element(:id, "ProductsUserFilter")).select_by(:text, "Manager Name")
  end

  #Automation script for dynamic Selection in drop down.
  def self.FilterUser2
    $driver.get$base_url4
    $driver.find_element(:id,'username').send_keys 'anirban.vodafone@yopmail.com'
    $driver.find_element(:id,'password').send_keys'anirban12345@'
    $driver.find_element(:class,'btn-inverse').click
    $driver.find_element(:class,'usersIcon').click
    #$driver.find_element(:id,'ProductsUserFilter').click
    puts "Select Dropdown"
    monthArray = ["Name","Employee id","Email","Manager Name",]
    ran = rand(0..4)
    #Selenium::WebDriver::Support::Select.new($driver.find_element(:id, "birthday_month")).select_by(:text, monthArray[ran])
    driver.find_element(:id,"birthday_month")
    monthArray[ran].click
    $driver.find_element(:class,'searchIcon').click
    end


  def self.dropdown
    $driver.get$base_url
    random= rand(1..12)
    select_month = driver.find_element(:id,"birthday_month")
    month_options = select_month.find_elements(:tag_name,"option")
    month_options[random].click
  end

  def self.settings
    $driver.get "http://tdt.crucibletesting.com"
    $driver.find_element(:id,'username').send_keys 'anirban.vodafone@yopmail.com'
    $driver.find_element(:id,'password').send_keys 'anirban12345@'
    $driver.find_element(:class,'btn-inverse').click
    $driver.find_element(:class,'usersIcon').click
    $driver.find_element(:class,'paraSetIcon').click
    $driver.find_element(:link,'Add Development Areas').click
    $driver.find_element(:class,'daCheckBox').click
    $driver.find_element(:class,'disableTextBox').send_keys'Managerial Skills'
    $driver.find_element(:class,'btnBlack').click
  end

  def self.ComposeEmail
    $driver.get "http://www.google.co.in/"
    $driver.find_element(:class,'gbit').click
    $driver.find_element(:name,'Email').click
    $driver.find_element(:name,'Email').send_keys 'bhabani@weboniselab.com'
    $driver.find_element(:name,'Passwd').send_keys 'password'
    $driver.find_element(:name,'signIn').click
    $driver.find_element(:xpath,"//*[@id='gb_23']/span[2]").click
    $driver.find_element(:xpath,".//*[@id=':b7']/div/div").click
    $driver.find_element(:class,'vO').send_keys 'anirban@weboniselab.com'
    $driver.find_element(:class,'aoT').click
    $driver.find_element(:class,'aoT').send_keys 'Executing Automation Scripts'
    $driver.find_element(:xpath,"").click

  end
end


