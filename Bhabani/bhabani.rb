require '../bhabani/include'
#require '../Vtr/testcases/Gda'
#require '../Vtr/testcases/new'
#require '../Vtr/testcases/User'
#require '../Vtr/testcases/google'
#require '../Vtr/testcases/Signup'
#require '../Vtr/testcases/Yahoo'
require '../bhabani/testcases/tdd'

class Bhabani < Test::Unit::TestCase

def setup
#client = Selenium::WebDriver::Remote::Http::Default.new
#client.timeout = 120 # seconds
#$driver = Selenium::WebDriver.for(:remote, :http_client => client, :url => 'http://192.168.0.52:4444/wd/hub', :desired_capabilities => ':chrome')
 $driver = Selenium::WebDriver.for :firefox
#$driver = Selenium::WebDriver.for :chrome
#$base_url = 'https://www.facebook.com/'
#$base_url2 = 'http://www.yahoo.com'
#$base_url3 = 'https://login.yahoo.com/config/login_verify2?.intl=in&.src=ym'
#$base_url4='http://tdt.crucibletesting.com/'
$driver.manage.timeouts.implicit_wait = 180
@verification_errors = []
end

  def teardown
 #$driver.quit
assert_equal [],@verification_errors 
end

  def test_me
    #For jobRole
    #Ttd.jobrole

    #For behavior capabilities
    #Ttd.behaviour

    #Ttd.quality

    #For Job Role Invite User
    #Ttd.inviteuser

    #For Change of Password
    #Ttd.changePassword

    #For Viewing JobRole
    # Ttd.ViewJobRole

    #For Viewing Activities and Alerts
    #Ttd.Activities

    #Edit Profile
    #Ttd.editProfile

    #JobRole
    # Ttd.CreateRole

    #Invite User
    #Ttd.InviteUser

    #CheckBoxSelection
    #Ttd.checkBox

    # For Filtering User
    #Ttd.FilterUser

    #For Filtering User dynamically using
    # Ttd.FilterUser2
     #Ttd.dropdown
    #For Parameters & Settings
     #Ttd.settings
     #Ttd.ComposeEmail

     Integer.random

  end

def verify(&blk) 
yield 
rescue Test::Unit::AssertionFailedError => ex 
@verification_errors << ex 
end

end