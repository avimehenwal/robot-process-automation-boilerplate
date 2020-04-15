
*** Settings ***
Documentation       Homepage Page Object Model
...                 > kindly use only page related variable allowed here
...                 > use locators.robot for adding all locators
...                 This is mostly for local data and keywords
Resource            ../SharedKeywords.robot
Resource            ../locators.robot
Resource            ../common.robot
Variables           ../variables.py


*** Variables ***
${title}            Login


*** Keywords ***
Is Homepage
    [Documentation]         Do not miss adding documentation here
    Match Page Title        ${title}

Check Then Press
    [Arguments]         ${locator}
    [Documentation]     First check condition set from global variable then execute or skip
    Run Keyword if      '${CLICKLIKES}' == 'true'      Wait And Press Element       ${locator}


*** Keywords ***
Is Login Page
    Match Page Title        ${title}

LoginPage Keyword Dummy
    Log        LoginPage Keyword

Submit Login Form
    [Documentation]             All information from variables
    Wait And Input Text         ${UserName}      ${insta_user}
    Wait And Input Text         ${Password}      ${insta_pass}
    Wait And Press Element      ${LoginBtn}
    Log To Console      LOGIN DONE
