*** Settings ***
Documentation           Outreach Strategy
...                     Like first {N} visible posts on homescreen
Resource                ../resources/page_objects/Homepage.robot
Force Tags 			    Instagram       homepage        ${platform}
Suite Setup             Ready Homepage


*** Test Cases ***
Go Crazy On Homepage
    [Documentation]         Automation Strategy
    [Tags]                  bot
    Give Hearts to Initial Posts on Homepage
    Continue Scrolling


*** Keywords ***
Ready Homepage
    [Tags]          check       popup
    Is Homepage
    Ready Page
