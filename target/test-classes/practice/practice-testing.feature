Feature: Practice Software Testing Website Validation

  Scenario: Sort products and validate Tape Measure specifications
    * configure driver = { type: 'chrome', headless: true }
    Given driver 'https://www.google.com/search?q=practice+software+testing'
    And waitFor('//a[contains(@href, "practicesoftwaretesting.com")]')
    When click('//a[contains(@href, "practicesoftwaretesting.com")]')
    And waitForUrl('https://practicesoftwaretesting.com')
    And waitFor('{}select[data-test="sort"]')
    And select('{}select[data-test="sort"]', 'price,asc')
    And scroll('{}a[data-test="product-01JDVG1YFQXQVHPVVVVVVVVVVV"]')
    And click('{}a[data-test="product-01JDVG1YFQXQVHPVVVVVVVVVVV"]')
    And waitFor('{}h1')
    And scroll('{}div[data-test="specifications"]')
    Then match text('{}div[data-test="specifications"] h4') == 'Specifications'
    And screenshot()
