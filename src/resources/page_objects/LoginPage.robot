*** Settings ***
Documentation       LogIn Page Object Model
...                 Only page related variable allowed here
...                 Use locators.robot for adding locators
...                 This is mostly for Keywords
Resource            ../common.robot
Resource            ../locators.robot
Resource            ../SharedKeywords.robot
Variables           ../variables.py

*** Variables ***
${title}            Login

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

