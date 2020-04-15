*** Settings ***
Documentation       Homepage Page Object Model
...                 Only page related variable allowed here
...                 Use locators.robot for adding locators
...                 This is mostly for Keywords
Resource            ../common.robot
Resource            ../locators.robot
Resource            ../SharedKeywords.robot
Variables           ../variables.py


*** Variables ***
# ${matchtext}      	smoothengineer
# ${matchtext}      	universalpetlovers
# ${matchtext}          all_visual_interpretation
${matchtext}        avimehenwal
${popup_text}       Not Now



*** Keywords ***
Is Homepage
    Match Page Title        ${title}

Ready Page
    ${passed}=      Run Keyword And Return Status   Page Should Contain     ${popup_text}
    Run Keyword If	${passed}	    Focus And Click     ${Popup}
    # Run Keyword and Ignore Error
    Wait Until Page Contains    ${matchtext}
    # Todo - Add provisions to know for sure if popup was there or not
	# Scroll To Botton

Give Hearts to Initial Posts on Homepage
    [Documentation]         Initially 4 articles are seen on Homepage
    ...                     articles are lazy loaded
    ...     scrolling down loads more articles and older ones become inaccessable
    ...     Todo: How to implement relative tree searching?
    ...     Todo: Check weather post is already liked? - then skip
	${heart_elements}=     Get WebElements			${Hearts}
	${count}=	           Get Element Count	    ${Hearts}
	Should Be True  	   	${count} > 2
	Log To Console			Articles on Page = ${count}
	FOR  	${index}	IN RANGE 	${count}
		Log 		index ${index}
		# ${article_heart}=	Catenate	${item}     ${heart}
		Scroll In Viewport		    ${index}
		# Log				@{heart_elements}[${index}]
        Check Then Press            @{heart_elements}[${index}]
	END

Continue Scrolling
    [Documentation]         Continue scrolling down, loadign new content and clicking likes
    ...     Todo: explore more concrete conditions where it fails
	FOR 	${i} 	IN RANGE      ${NUM_POSTS}
		Log To Console      > ITERATION = ${i}
		Implicit Wait 2
		Scroll In Viewport     4
		Implicit Wait 1
		${heart_elements}=     Get WebElements			${Hearts}
        Check Then Press            @{heart_elements}[4]
	END

Check Then Press
    [Arguments]         ${locator}
    [Documentation]     First check condition set from global variable then execute or skip
    Run Keyword if      '${CLICKLIKES}' == 'true'      Wait And Press Element       ${locator}
