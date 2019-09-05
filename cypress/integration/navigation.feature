Feature: Navigation
===


Scenario: Can navigate to a page by name
---
When I navigate to "actions"
Then I should be on "actions"


Scenario: Can navigate to a page by path
---
When I navigate to "actions"
Then I should be on "/cypress/pages/actions.html"


Scenario: Can assert to be on the current page by page name
---
When I navigate to "assertions"
Then I should be on "assertions"


Scenario: Can assert to be on the current page by page path string
---
When I navigate to "assertions"
Then I should be on "/cypress/pages/assertions.html"


Scenario: Can assert to be on the current page by page path regex
---
When I navigate to "assertions"
Then I should be on "/assert.*\.html$/"


Scenario: Can assert to not be on a different page by page name
---
When I navigate to "assertions"
Then I should not be on "another page"


Scenario: Can assert to not be on a different page by page path string
---
When I navigate to "assertions"
Then I should not be on "/cypress/pages/another.html"


Scenario: Can assert to not be on a different page by page path regex
---
When I navigate to "assertions"
Then I should not be on "/another.*\.html$/"
