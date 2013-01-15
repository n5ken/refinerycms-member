RSpec.configure do |config|
  config.include Refinery::Testing::ControllerMacros::Authentication, :type => :controller
  config.include Refinery::Testing::ControllerMacros::Methods, :type => :controller
end
