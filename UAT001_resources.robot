*** Settings ***
Library     Selenium2Library

*** Variables ***
${SERVER}    localhost
${BROWSER}    chrome
${REGISTER URL}    http://${SERVER}/AtomGame/public/register
${TITLE NAME}    P001
${FULL NAME}    Somnut Naja
${BIRTHDAY}    12/31/1997
${ID CARD}    1409901718605
${STUDENT ID}    593020804-3
${TELEPHONE NUMBER}    0812345678
${PARENT PHONE NUMBER}    0898765432
${FACEBOOK}    https://www.facebook.com/NutNinlaong
${IMAGE}    C://Users/Mr'Nut/Desktop/ProjectSQA/web.jpg
${TYPE OF ATTENDEES}    VT
${UNIVERSITY}    มหาวิทยาลัยขอนแก่น
${EMAIL}    testuat@gmail.com
${USERNAME}    porinut
${PASSWORD}    12345678
${REPEAT PASSWORD}    12345678

*** Keywords ***
TC001 : Open Event Registration Page
    Open Browser    ${REGISTER URL}    ${BROWSER} 
    Maximize Browser Window
    Location Should Be     ${REGISTER URL}


TC002 : Input Register Success  
  [Arguments]    ${title name}    ${full name}    ${birthday}    ${id card}    ${student id}    ${telephone number}    ${parent phone number}    ${facebook}    ${image}    ${type of attendees}    ${university}    ${email}    ${username}    ${password}     ${repeat password}     
  Click Element    //*[@id="side-main-menu"]/li[2]/a
  Click Element    //*[@id="pages-nav-list0"]/li[1]/a
  Click Element    //*[@id="ShowGender"]/div[1]/label 
  Click Element    //*[@id="prename"]
  Select From List By Value    //*[@id="prename"]    ${title name}
  Input Text    inputfullname    ${full name}
  Press Key    xpath=//input[@id='inputBD']    ${birthday}
  Click Element    //*[@id="ShowIDcardNPass"]/div[1]/label
  Wait Until Element Is Visible    //*[@id="IDcard"]    4s
  Input Text    IDcard    ${id card}
  Input Text    inputSTD    ${student id}
  Input Text    tell    ${telephone number}
  Input Text    inputTelephoneP    ${parent phone number}
  Input Text    inputFacebook    ${facebook}
  Choose File    xpath=//input[@id='inputImg']    ${image}
  Select From List By Value     //*[@id="inputType"]    ${type of attendees}
  Select From List By Value     //*[@id="inputUNS"]    ${university}
  Input Text    E-mail    ${email}
  Input Text    inputUsername    ${username}
  Input Text    inputPassword    ${password}
  Input Text    inputCPassword    ${repeat password}
  Click Button    ลงทะเบียน
  Location Should Contain    ${REGISTER URL}
  Wait Until Page Contains    ลงทะเบียนสำเร็จ

TC003 : Input Register Success No Birthday
  [Arguments]    ${title name}    ${full name}    ${birthday}    ${id card}    ${student id}    ${telephone number}    ${parent phone number}    ${facebook}    ${image}    ${type of attendees}    ${university}    ${email}    ${username}    ${password}     ${repeat password}     
  Click Element    //*[@id="side-main-menu"]/li[2]/a
  Click Element    //*[@id="pages-nav-list0"]/li[1]/a
  Click Element    //*[@id="ShowGender"]/div[1]/label 
  Click Element    //*[@id="prename"]
  Select From List By Value    //*[@id="prename"]    ${title name}
  Input Text    inputfullname    ${full name}
  Press Key    xpath=//input[@id='inputBD']    ${empty}
  Click Element    //*[@id="ShowIDcardNPass"]/div[1]/label
  Wait Until Element Is Visible    //*[@id="IDcard"]    4s
  Input Text    IDcard    ${id card}
  Input Text    inputSTD    ${student id}
  Input Text    tell    ${telephone number}
  Input Text    inputTelephoneP    ${parent phone number}
  Input Text    inputFacebook    ${facebook}
  Choose File    xpath=//input[@id='inputImg']    ${image}
  Select From List By Value     //*[@id="inputType"]    ${type of attendees}
  Select From List By Value     //*[@id="inputUNS"]    ${university}
  Input Text    E-mail    ${email}
  Input Text    inputUsername    ${username}
  Input Text    inputPassword    ${password}
  Input Text    inputCPassword    ${repeat password}
  Click Button    ลงทะเบียน
  Location Should Contain    ${REGISTER URL}
  Wait Until Page Contains    ลงทะเบียนสำเร็จ

TC004 : Input Register Success No Studetn Id
 [Arguments]    ${title name}    ${full name}    ${birthday}    ${id card}    ${student id}    ${telephone number}    ${parent phone number}    ${facebook}    ${image}    ${type of attendees}    ${university}    ${email}    ${username}    ${password}     ${repeat password}     
  Click Element    //*[@id="side-main-menu"]/li[2]/a
  Click Element    //*[@id="pages-nav-list0"]/li[1]/a
  Click Element    //*[@id="ShowGender"]/div[1]/label 
  Click Element    //*[@id="prename"]
  Select From List By Value    //*[@id="prename"]    ${title name}
  Input Text    inputfullname    ${full name}
  Press Key    xpath=//input[@id='inputBD']    ${birthday}
  Click Element    //*[@id="ShowIDcardNPass"]/div[1]/label
  Wait Until Element Is Visible    //*[@id="IDcard"]    4s
  Input Text    IDcard    ${id card}
  Input Text    inputSTD    ${empty}
  Input Text    tell    ${telephone number}
  Input Text    inputTelephoneP    ${parent phone number}
  Input Text    inputFacebook    ${facebook}
  Choose File    xpath=//input[@id='inputImg']    ${image}
  Select From List By Value     //*[@id="inputType"]    ${type of attendees}
  Select From List By Value     //*[@id="inputUNS"]    ${university}
  Input Text    E-mail    ${email}
  Input Text    inputUsername    ${username}
  Input Text    inputPassword    ${password}
  Input Text    inputCPassword    ${repeat password}
  Click Button    ลงทะเบียน
  Location Should Contain    ${REGISTER URL}
  Wait Until Page Contains    ลงทะเบียนสำเร็จ

TC005 : Input Register Success No Parent Phone Number  
  [Arguments]    ${title name}    ${full name}    ${birthday}    ${id card}    ${student id}    ${telephone number}    ${parent phone number}    ${facebook}    ${image}    ${type of attendees}    ${university}    ${email}    ${username}    ${password}     ${repeat password}     
  Click Element    //*[@id="side-main-menu"]/li[2]/a
  Click Element    //*[@id="pages-nav-list0"]/li[1]/a
  Click Element    //*[@id="ShowGender"]/div[1]/label 
  Click Element    //*[@id="prename"]
  Select From List By Value    //*[@id="prename"]    ${title name}
  Input Text    inputfullname    ${full name}
  Press Key    xpath=//input[@id='inputBD']    ${birthday}
  Click Element    //*[@id="ShowIDcardNPass"]/div[1]/label
  Wait Until Element Is Visible    //*[@id="IDcard"]    4s
  Input Text    IDcard    ${id card}
  Input Text    inputSTD    ${student id}
  Input Text    tell    ${telephone number}
  Input Text    inputTelephoneP    ${empty}
  Input Text    inputFacebook    ${facebook}
  Choose File    xpath=//input[@id='inputImg']    ${image}
  Select From List By Value     //*[@id="inputType"]    ${type of attendees}
  Select From List By Value     //*[@id="inputUNS"]    ${university}
  Input Text    E-mail    ${email}
  Input Text    inputUsername    ${username}
  Input Text    inputPassword    ${password}
  Input Text    inputCPassword    ${repeat password}
  Click Button    ลงทะเบียน
  Location Should Contain    ${REGISTER URL}
  Wait Until Page Contains    ลงทะเบียนสำเร็จ

TC006 : Input Register Success No Facebook
  [Arguments]    ${title name}    ${full name}    ${birthday}    ${id card}    ${student id}    ${telephone number}    ${parent phone number}    ${facebook}    ${image}    ${type of attendees}    ${university}    ${email}    ${username}    ${password}     ${repeat password}     
  Click Element    //*[@id="side-main-menu"]/li[2]/a
  Click Element    //*[@id="pages-nav-list0"]/li[1]/a
  Click Element    //*[@id="ShowGender"]/div[1]/label 
  Click Element    //*[@id="prename"]
  Select From List By Value    //*[@id="prename"]    ${title name}
  Input Text    inputfullname    ${full name}
  Press Key    xpath=//input[@id='inputBD']    ${birthday}
  Click Element    //*[@id="ShowIDcardNPass"]/div[1]/label
  Wait Until Element Is Visible    //*[@id="IDcard"]    4s
  Input Text    IDcard    ${id card}
  Input Text    inputSTD    ${student id}
  Input Text    tell    ${telephone number}
  Input Text    inputTelephoneP    ${parent phone number}
  Input Text    inputFacebook    ${empty}
  Choose File    xpath=//input[@id='inputImg']    ${image}
  Select From List By Value     //*[@id="inputType"]    ${type of attendees}
  Select From List By Value     //*[@id="inputUNS"]    ${university}
  Input Text    E-mail    ${email}
  Input Text    inputUsername    ${username}
  Input Text    inputPassword    ${password}
  Input Text    inputCPassword    ${repeat password}
  Click Button    ลงทะเบียน
  Location Should Contain    ${REGISTER URL}
  Wait Until Page Contains    ลงทะเบียนสำเร็จ

TC007 : Input Register Success No Birthday No Studetn Id No Parent Phone Number No Facebook
  [Arguments]    ${title name}    ${full name}    ${birthday}    ${id card}    ${student id}    ${telephone number}    ${parent phone number}    ${facebook}    ${image}    ${type of attendees}    ${university}    ${email}    ${username}    ${password}     ${repeat password}     
  Click Element    //*[@id="side-main-menu"]/li[2]/a
  Click Element    //*[@id="pages-nav-list0"]/li[1]/a
  Click Element    //*[@id="ShowGender"]/div[1]/label 
  Click Element    //*[@id="prename"]
  Select From List By Value    //*[@id="prename"]    ${title name}
  Input Text    inputfullname    ${full name}
  Press Key    xpath=//input[@id='inputBD']    ${birthday}
  Click Element    //*[@id="ShowIDcardNPass"]/div[1]/label
  Wait Until Element Is Visible    //*[@id="IDcard"]    4s
  Input Text    IDcard    ${id card}
  Input Text    inputSTD    ${student id}
  Input Text    tell    ${telephone number}
  Input Text    inputTelephoneP    ${parent phone number}
  Input Text    inputFacebook    ${facebook}
  Choose File    xpath=//input[@id='inputImg']    ${image}
  Select From List By Value     //*[@id="inputType"]    ${type of attendees}
  Select From List By Value     //*[@id="inputUNS"]    ${university}
  Input Text    E-mail    ${email}
  Input Text    inputUsername    ${username}
  Input Text    inputPassword    ${password}
  Input Text    inputCPassword    ${repeat password}
  Click Button    ลงทะเบียน
  Location Should Contain    ${REGISTER URL}
  Wait Until Page Contains    ลงทะเบียนสำเร็จ