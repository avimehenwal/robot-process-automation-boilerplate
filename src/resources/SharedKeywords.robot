*** Settings ***
Documentation               Only Shared Keywords
...                         Available to all page objects
...                         Kindly do not add variables here

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
Wait And Input Text
    [Arguments]         ${locator}      ${text}
    [Documentation]     Wait, then look for element before filling
    Wait Until Page Contains Element        ${locator}
    Page Should Contain Element             ${locator}
    Input Text          ${locator}    ${text}       clear=True

Wait And Press Element
    [Arguments]         ${locator}
    [Documentation]     Wait, then look for element, is enabled then press
    Wait Until Page Contains element 	${locator}
    Page Should Contain Element         ${locator}
    Wait Until Element Is Enabled       ${locator}
	Focus And Click 					${locator}

# ------------------------------------------------------------PROBLAMATIC KEYWORDS
Silently Handle Alert
	[Documentation]		Supress language change check dialog box
	...					Only seen at entrypoint window
	...					Todo: Add exact message here
	Run Keyword and Ignore Error      Handle Alert        action=ACCEPT

Scroll In Viewport
	[Arguments]		    ${index}
	[Documentation]		seleniumLibrary implemented keyword doesnt work
	...					only JS method works
	# Log To Console 		item ${item}
	Log To Console 		Scrollong at index ${index}
    Execute Javascript    document.querySelectorAll('${jsHeart}')[${index}].scrollIntoView({ behavior: 'smooth', block: 'center'})


# --------------------------------------------------------------

Scroll To Botton
	Execute Javascript    window.scrollTo(0,document.body.scrollHeight)

Implicit Wait
    Run Keyword And Ignore Error     	Wait Until Page Contains Element     ${NaN}

Implicit Wait 1
    Run Keyword And Ignore Error     	Wait Until Page Contains Element     ${NaN}    timeout=1s

Implicit Wait 2
    Run Keyword And Ignore Error		Wait Until Page Contains Element     ${NaN}    timeout=2s

Select Accounts
	[Arguments]     ${accounts}
	FOR    ${account}    IN    @{accounts}
		Log To Console 		${account}
	END

Botify Account
	Ready Homepage
	Give Hearts to Initial Posts on Homepage
	Continue Scrolling

# ---------------------------------------------------------- TEARDOWN
Run Suite Teardown
	Run Keyword and Ignore Error   		Close All Browser