# Karate Practice Testing Project

This project automates testing for the practice software testing website using Karate framework.

## Prerequisites
- Java 11 or higher
- Maven 3.6+
- Chrome browser

## Project Structure
```
karate-practice-testing/
├── pom.xml
└── src/test/java/practice/
    ├── PracticeTestingRunner.java
    └── practice-testing.feature
```

## Run Tests
```bash
mvn test
```

## What the test does
1. Opens Google search for "practice software testing"
2. Clicks the first practicesoftwaretesting.com link
3. Validates the first page by checking:
   - URL contains 'practicesoftwaretesting.com'
   - Page has h1 element
   - Search input exists
   - Navigation exists
   - Takes a screenshot

## Reports
After running tests, view the HTML report at:
`target/karate-reports/karate-summary.html`
