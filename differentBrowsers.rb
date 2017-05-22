require 'selenium-webdriver'
describe "Selenium Recipes - Start different URLs" do
  
  before(:all) do
    @driver = Selenium::WebDriver.for(:chrome)
  end
  
  after(:all) do
    @driver.quit
  end 
 
  it "Start TravelAgileWay" do
    @driver.navigate.to("http://travel.agileway.net")
    sleep 5
  end

  it "Start Opendatalabs" do
    @driver.navigate.to("http://opendatalabs.co.in")
    expect(@driver.title).to eq("OpenDataLabs _ Home of Open Source Experts")
    sleep 30
  end
end
