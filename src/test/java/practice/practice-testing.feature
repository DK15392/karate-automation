Feature: Practice Software Testing Website Validation

  Scenario: Navigate to practice testing website and validate first page
    * configure driver = { type: 'chrome', headless: true }
    Given driver 'https://www.google.com/search?q=practice+software+testing'
    And waitFor('//a[contains(@href, "practicesoftwaretesting.com")]')
    When click('//a[contains(@href, "practicesoftwaretesting.com")]')
    And waitForUrl('https://practicesoftwaretesting.com')
    Then match driver.url contains 'practicesoftwaretesting.com'
    And waitFor('h1')
    And match exists('{}input[data-test="search-query"]') == true
    And match exists('{}nav') == true
    And screenshot()
