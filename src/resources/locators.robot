*** Settings ***
Documentation       Placeholder for all Locator Variables

*** Variables ***

# (in bold) Page Urls
${LOGIN URL}      	https://www.instagram.com/accounts/login/
${BROWSER}        	Chrome

# Framework Settings (in bold)
${TIMEOUT}		  	    2s
${SPEED}                0.1s
${NaN}			   	    css:#avimehenwal
${NUM_POSTS}			50
${CLICKLIKES}           true

# COMMOM PAGE VARIABLES
# text variables in SMALL-CASE
${title}                Instagram

# **************** ALL LOCATORS in CAMEL-CASE
# LOGIN PAGE
${UserName}       	  css:#react-root > section > main > div > article > div > div:nth-child(1) > div > form > div:nth-child(2) > div > label > input
${Password}        	  css:#react-root > section > main > div > article > div > div:nth-child(1) > div > form > div:nth-child(3) > div > label > input
${LoginBtn}           css:#react-root > section > main > div > article > div > div:nth-child(1) > div > form > div:nth-child(4)
${Popup}              css:div.piCib button.aOOlW:nth-child(2)

# HOMEPAGE
${matchtext}      	all_visual_interpretation
${child_heart}     	div.eo2As > section >span:nth-child(1)
${Hearts}		   	css:article div.eo2As > section >span:nth-child(1)
${jsHeart}		   	article div.eo2As > section >span:nth-child(1)
