*** Settings ***
Documentation           Add all Homepage relates tests/tasks
Resource                ../resources/page_objects/Homepage.robot
Force Tags 			    ${platform}     homepage
Suite Setup             Ready Homepage


*** Test Cases ***
Test Case 1
    [Documentation]         Automation Strategy
    [Tags]                  bot
    Some Keyword


*** Keywords ***
Ready Homepage
    [Tags]          check       popup
    Is Homepage
    Ready Page
