require '../bhabani/include'
#require '../Vtr/testcases/Gda'
#require '../Vtr/testcases/new'
#require '../Vtr/testcases/User'
#require '../Vtr/testcases/google'
#require '../Vtr/testcases/Signup'
#require '../Vtr/testcases/Yahoo'
#require '../bhabani/testcases/Tdt'
require '../bhabani/testcases/Wgll'

class Bhabani < Test::Unit::TestCase

def setup
#client = Selenium::WebDriver::Remote::Http::Default.new
#client.timeout = 120 # seconds
#$driver = Selenium::WebDriver.for(:remote, :http_client => client, :url => 'http://192.168.0.52:4444/wd/hub', :desired_capabilities => ':chrome')
#$driver = Selenium::WebDriver.for :firefox
 $driver = Selenium::WebDriver.for :chrome
#$base_url = 'https://www.facebook.com/'
#$base_url2 = 'http://www.yahoo.com'
#$base_url3 = 'https://login.yahoo.com/config/login_verify2?.intl=in&.src=ym'
#$base_url4='http://tdt.crucibletesting.com/users/users/login'
 $base_url5='http://crucible.crucibletesting.com/'
 $driver.manage.timeouts.implicit_wait = 180
 @verification_errors = []
end

  def teardown
 #$driver.quit
assert_equal [],@verification_errors 
end

  def test_me
    #For jobRole
    #Tdt.jobrole

    #For behavior capabilities
    #Tdt.behaviour

    #Tdt.quality

    #For Job Role Invite User
    #Tdt.inviteuser

    #For Change of Password
    #Tdt.changePassword

    #For Viewing JobRole
    # Tdt.ViewJobRole

    #For Viewing Activities and Alerts
    #Tdt.Activities

    #Edit Profile
    #Tdt.editProfile

    #JobRole
    #Tdt.CreateRole

    #Invite User
    #Tdt.InviteUser

    #CheckBoxSelection
    #Tdt.checkBox

    # For Filtering User
    #Tdt.FilterUser

    #For Filtering User dynamically using
    #Tdt.FilterUser2
     #Tdt.dropdown
    #For Parameters & Settings
     #Tdt.settings
     #Tdt.ComposeEmail

     #Integer.random

    #Final Automation script for Add User
     #Tdt.AddUser

    #Final Automation script for Job Roles
    # Tdt.jobRole
    #Automation Script for Adding USer in WGLL
    #Wgll.AddUser

    #Automation script for WGLL Add jobRole
     #Wgll.jobRole

    #Automatiin script for WGLL assessment
    Wgll.wgll_assessment
  end


def verify(&blk) 
yield 
rescue Test::Unit::AssertionFailedError => ex 
@verification_errors << ex 
end

end