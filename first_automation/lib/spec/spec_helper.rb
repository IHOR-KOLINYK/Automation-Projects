require 'rspec'
require 'page-object'
require 'watir-webdriver'

require_relative '../../lib/pages/demo_page'
require_relative '../../lib/pages/hanna_page'
require_relative '../../lib/pages/price_page'
require_relative '../../lib/pages/customer_details_page'

RSpec.configure do |config|
  config.include PageObject::PageFactory

  config.before do
    @browser = Watir::Browser.new :firefox
    @browser.window.maximize
  end

  config.after do
    @browser.close
  end

end