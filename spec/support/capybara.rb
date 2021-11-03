Capybara.register_driver :chrome do |app|
  capabilities = Selenium::WebDriver::Remote::Capabilities.chrome(
    'goog:chromeOptions' => {
      'args' => ['headless', 'no-sandbox', 'disable-dev-shm-usage', 'disable-gpu', 'window-size=1920,1080']
    },
  )

  Capybara::Selenium::Driver.new(
    app,
    browser: :remote,
    url: ENV['SELENUM_REMOTE_URL'],
    capabilities: capabilities
  )
end

Capybara.javascript_driver = :chrome
