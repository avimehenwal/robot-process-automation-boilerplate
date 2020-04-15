*** Settings ***
Documentation               Only Shared Keywords
...                         Available to all page objects
...                         Kindly do not add variables here
...							Use locators.robot for variables


*** Keywords ***
# --------------------------------------------------------Super BASIC ones
Match Page Title
	[Arguments]			${expected}
	[Documentation]		Useful to check if we are on right page
    ${title}=			Get Title
    Should Contain      ${title}		${expected}		msg=${title}

Focus And Click
    [Arguments]         ${locator}
    [Documentation]     Focus on element and then click
	Wait Until Page Contains element  		${locator}
    Set Focus To Element                    ${locator}
    Click Element                           ${locator}

# -------------------------------------------------------------FORM FILLING
#
# .
# .
# .
#
# ---------------------------------------------------------- TEARDOWN
Run Suite Teardown
	Run Keyword and Ignore Error   		Close All Browser