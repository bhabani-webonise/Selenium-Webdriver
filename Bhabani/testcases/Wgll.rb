class Wgll
  #
  #Final Automation Script for Adding User in WGLL
  def self.AddUser
     $driver.get$base_url5
     $driver.find_element(:id,'username').send_keys'admin@crucible.com'
     $driver.find_element(:id,'password').send_keys 'crucible#2012'
     $driver.find_element(:class,'btn-inverse').click
     $driver.find_element(:xpath,'html/body/section/section/section/div[3]/div/div[2]/ul/li[1]/div[2]/div[3]/a').click
     $driver.get "http://crucible.crucibletesting.com/wgll/users/add/110"
     #$driver.find_element(:class,'btnThin').click
     newname=Faker::Name.first_name
     $driver.find_element(:id,'UserFirstName').send_keys newname
     lastname=Faker::Name.last_name
     $driver.find_element(:id,'UserLastName').send_keys lastname
     employeeid= "WSSPL" + rand(1..1000).to_s
     $driver.find_element(:id,'ProfileEmployeeId').send_keys employeeid
     email=Faker::Internet.email
     $driver.find_element(:id,'UserUsername').send_keys email
     $driver.find_element(:id,'job_title').send_keys 'Manager'
     #$driver.find_element(:xpath,".//*[@id='token-input-reporting_manager_id']").click
     $driver.find_element(:xpath,".//*[@id='token-input-reporting_manager_id']").send_keys 'Anirban Sinha'
     $driver.find_element(:xpath,".//*[@id='token-input-reporting_manager_id']").send_keys Keys.ARROW_DOWN
     $driver.find_element(:xpath,"html/body/div[3]/ul/li[1]").send_keys Keys.ENTER
     $driver.find_element(:xpath,"html/body/div[3]/ul/li[1]").click Keys.ENTER
     $driver.find_element(:xpath,".//*[@id='UserAddForm']/div[16]/div/input[2]").click
     Selenium::WebDriver::Support::Select.new($driver.find_element(:name, "data[Profile][level_id][9]")).select_by(:text, "Retail")
  end
  def self.paramasettings
    $driver.get$base_url5
    $driver.find_element(:id,'username').send_keys'admin@crucible.com'
    $driver.find_element(:id,'password').send_keys 'crucible#2012'
    $driver.find_element(:class,'btn-inverse').click
    $driver.find_element(:class,'btnPop ').click
    jobname=["Branch Manager","Section Engineer","System Analyst","System Engineer","Database Developer"]
    ran1=rand(0..4)
    $driver.find_element(:id,'CompetencyName').send_keys jobname
    paragraph1=Faker::Lorem.paragraph
    $driver.find_element(:id,'CompetencyDescription').send_keys paragraph1
    monthArray = ["Big Picture","Commercial Accument","Commercial Acumen","Confidence and Optimism","Creating Leaders","Customer centric"]
    ran = rand(0..5)
    Selenium::WebDriver::Support::Select.new(driver.find_element(:id, "CompetencyCategoryId")).select_by(:text, monthArray[ran])
    $driver.find_element(:class,'btn-inverse').click

  end

  #Final Automation Script for JobRole

  def self.jobRole
    $driver.get$base_url5
    $driver.find_element(:id,'username').send_keys'admin@crucible.com'
    $driver.find_element(:id,'password').send_keys 'crucible#2012'
    $driver.find_element(:class,'btn-inverse').click
    $driver.find_element(:xpath,'html/body/section/section/section/div[3]/div/div[2]/ul/li[1]/div[2]/div[3]/a').click
    $driver.get "http://crucible.crucibletesting.com/wgll/job_roles/index/112"
    $driver.find_element(:class,'btnThin').click
    jobTitle=Faker::Company.name
    $driver.find_element(:id,'JobRoleName').send_keys jobTitle
    $driver.find_element(:class,'btn-inverse').click
    $driver.get "http://crucible.crucibletesting.com/wgll/job_roles/index/112"
    $driver.find_element(:class,'btnThin').click
    jobTitle1=Faker::Company.name
    $driver.find_element(:id,'JobRoleName').send_keys jobTitle1
    Selenium::WebDriver::Support::Select.new($driver.find_element(:name,'data[JobRole][level_id][9]')).select_by(:text, "Telecom")
    $driver.find_element(:class,'btn-inverse').click
  end
  def self.wgll_assessment
    $driver.get$base_url5
    $driver.find_element(:id,'username').send_keys'admin@crucible.com'
    $driver.find_element(:id,'password').send_keys 'crucible#2012'
    $driver.find_element(:class,'btn-inverse').click
    $driver.get "http://crucible.crucibletesting.com/wgll/assessment_projects/index/112"
    $driver.find_element(:class,'btnThin').click
    name=Faker::Name.first_name
    $driver.find_element(:id,'WgllAssessmentProjectName').send_keys name
    paragraph1=Faker::Lorem.paragraph
    $driver.find_element(:name,'data[WgllAssessmentProject][description]').send_keys paragraph1
    $driver.find_element(:class,'blackBtn ').click
    $driver.find_element(:link,'Select this Job Role').click
    $driver.find_element(:class,'assessmentBox').click
    $driver.find_element(:id,'doneButtonClicked311').click
    $driver.find_element(:xpath,"html/body/section/section/section/div[3]/div/div[6]/a[2]").click
    $driver.find_element(:class,'userCheckBox ').click
    $driver.find_element(:class,'sendInvitation').click
  end
end