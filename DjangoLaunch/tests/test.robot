*** Variables ***

${SERVER}               http://localhost:55001


*** Settings ***

Documentation   Django Robot Tests
Library         DjangoLaunch  127.0.0.1  55001  settings=mysite.robotframework_settings
Library         Browser
Suite Setup     Open Django and Browser
Suite Teardown  Close Django and Browser


*** Keywords ***

Open Django and Browser
  Start Django
  New Persistent Context

Close Django and Browser
  Close Browser
  Stop Django


*** Test Cases ***

Scenario: As a visitor I can visit the django default page
  New Page  ${SERVER}
  Get Element  text=Hello, World
