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
${matchtext}        avimehenwal
${popup_text}       Not Now


*** Keywords ***
Is Homepage
    [Documentation]         Do not miss adding documentation here
    Match Page Title        ${title}

Check Then Press
    [Arguments]         ${locator}
    [Documentation]     First check condition set from global variable then execute or skip
    Run Keyword if      '${CLICKLIKES}' == 'true'      Wait And Press Element       ${locator}

Give Hearts to Initial Posts on Homepage
    [Documentation]         Initially 4 articles are seen on Homepage
    ...                     articles are lazy loaded
    ...     Todo: some point one
    ...     Todo: some point two
	FOR  	${index}	IN RANGE 	${count}
		Log 		index ${index}
		${article_heart}=	Catenate	${item}     ${heart}
        Check Then Press            @{heart_elements}[${index}]
	END

