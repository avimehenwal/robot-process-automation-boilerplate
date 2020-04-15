*** Settings ***
Documentation           Enter login Information to the form
...                     and submit before passing control to next page
Resource                ../resources/page_objects/LoginPage.robot
Force Tags 			    ${platform}         login
Suite Setup             Is Login Page


*** Test Cases ***
Fill Login Form And Submit
    [Tags]          form
    Submit Login Form
