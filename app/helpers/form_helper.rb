module FormHelper
  def setup_driver(driver)
    driver.driving_style ||= DrivingStyle.new
    driver
  end
end
