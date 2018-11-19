*** Settings ***
Library     Selenium2Library

*** Variables ***
${SERVER}          localhost:7272
${BROWSER}         chrome
${REGISTER URL}	    http://localhost/AtomGame/public/register
${DELAY}	0
${TITLE NAME}		P001
${FULL NAME}     Somnut Naja
${BIRTHDAY}     12/31/1997
${ID CARD}    1409901718605
${STUDENT ID}    593020804-3
${TELEPHONE NUMBER}    0812345678
${PARENT PHONE NUMBER}   0898765432
${FACEBOOK}    https://www.facebook.com/NutNinlaong
${TYPE OF ATTENDEES}    CP
${UNIVERSITY}    มหาวิทยาลัยขอนแก่น
${EMAIL}    testuat@gmail.com
${USERNAME}    porinut
${PASSWORD}    12345678
${REPEAT PASSWORD}    12345678


*** Keywords ***
Open Event Registration Page
	Open Browser    ${REGISTER URL}    ${BROWSER}
    Maximize Browser Window
	Location Should Be    ${REGISTER URL}
	Set Selenium Speed    ${DELAY}

Input Register Success form 
    [Arguments]    ${title name}    ${full name}    ${birthday}     ${id card}      ${student id}       ${telephone number}     ${parent phone number} 		${facebook}      ${type of attendees}        ${university}       ${email}       ${username}      ${password}     ${repeat password}     
	Click Element    //*[@id="side-main-menu"]/li[2]/a
	Click Element    //*[@id="pages-nav-list0"]/li[1]/a
	Click Element    //*[@id="ShowGender"]/div[1]/label 
	Click Element    //*[@id="prename"]
	Select From List By Value     //*[@id="prename"]	${title name}
	Input Text    inputfullname		${full name} 
	Press Key    xpath=//input[@id='inputBD']	${birthday}
	Click Element    //*[@id="ShowIDcardNPass"]/div[1]/label
	Click Element    //*[@id="IDcard"]
	Input Text    IDcard    ${id card}
	Input Text    inputSTD		${student id}
	Input Text    tell		${telephone number}
	Input Text    inputTelephoneP	${parent phone number}
	Input Text    inputFacebook		${facebook}
	Choose File    xpath=//input[@id='inputImg']    D://SQA/bg7.jpg
	Select From List By Value     //*[@id="inputType"]		${type of attendees}
	Select From List By Value     //*[@id="inputUNS"]	${university}
	Input Text    E-mail	${email}
	Input Text    inputUsername		${username}
	Input Text    inputCPassword	${password}
	Input Text    inputCPassword		${repeat password}
	Click Button    ลงทะเบียน
