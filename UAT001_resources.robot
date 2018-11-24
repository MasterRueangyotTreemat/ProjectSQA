*** Settings ***
Library     Selenium2Library

*** Variables ***
${SERVER}    localhost
${BROWSER}    chrome
${HOME URL}    http://${SERVER}/AtomGame/public/home
${REGISTER URL}    http://${SERVER}/AtomGame/public/register
${TITLE NAME}    P001
${FULL NAME}    Somnut Naja
${BIRTHDAY}    12/31/1997
${VALID ID CARD}    1409901718605
${INVALID ID CARD}    14099017
${ID CARD PATH}    //*[@id="ShowIDcardNPass"]/div[1]/label
${ID CARD ID PATH}    IDcard
${VALID PASSPORT}    AA7505011
${INVALID PASSPORT}    A750501
${PASSPORT PATH}    //*[@id="ShowIDcardNPass"]/div[3]/label
${PASSPORT ID PATH}    Passport
${VALID STUDENT ID}    593020804-3
${INVALID STUDENT ID}    5930208
${VALID TELEPHONE NUMBER}    0812345678
${INVALID TELEPHONE NUMBER}    08123
${VALID PARENT PHONE NUMBER}    0898765432
${INVALID PARENT PHONE NUMBER}    089876
${FACEBOOK}    https://www.facebook.com/NutNinlaong
${IMAGE}    C:/Users/Mr'Nut/Desktop/ProjectSQA/web.jpg 
${TYPE OF ATTENDEES}    SA
${UNIVERSITY}    มหาวิทยาลัยขอนแก่น
${EMAIL}    testuat@gmail.com
${USERNAME}    porinut
${VALID PASSWORD}    12345678
${INVALID PASSWORD}    1234
${VALID REPEAT PASSWORD}    12345678
${INVALID REPEAT PASSWORD}    1234
${DELAY}    0.05

*** Keywords ***
Open Event Registration Page
    Open Browser    ${HOME URL}    ${BROWSER} 
    Maximize Browser Window
    Set Selenium Speed    ${DELAY} 

Input Registration Page
  [Arguments]    ${title name}    ${full name}    ${birthday}    ${path}    ${id path}    ${card}    ${student id}    ${telephone number}    ${parent phone number}    ${facebook}    ${image}    ${type of attendees}    ${university}    ${email}    ${username}    ${password}     ${repeat password}     
  Click Element    //*[@id="side-main-menu"]/li[2]/a
  Click Element    //*[@id="pages-nav-list0"]/li[1]/a
  Click Element    //*[@id="ShowGender"]/div[1]/label 
  Click Element    //*[@id="prename"]
  Select From List By Value    //*[@id="prename"]    ${title name}
  Input Text    inputfullname    ${full name}
  Press Key    xpath=//input[@id='inputBD']    ${birthday}
  Click Element    ${path}
  Input Text    ${id path}    ${card}
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
