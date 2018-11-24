*** Settings ***
Library     Selenium2Library

*** Variables ***
${SERVER}    localhost
${BROWSER}    chrome
${HOME URL}    http://${SERVER}/AtomGame/public/home
${REGISTER URL}    http://${SERVER}/AtomGame/public/register
${GENDER}    //*[@id="ShowGender"]/div[1]/label
${TITLE NAME}    P001
${FULL NAME}    Somnut Naja
${NO LASTNAME}    Somnut
${BIRTHDAY}    12/31/1997
${ID CARD}    1409901718605
${PASSPORT}    AA7505011
${STUDENT ID}    593020804-3
${TELEPHONE NUMBER}    0812345678
${PARENT PHONE NUMBER}    0898765432
${FACEBOOK}    https://www.facebook.com/NutNinlaong
${IMAGE}    C:/Users/Mr'Nut/Desktop/ProjectSQA/web.jpg 
${TYPE OF ATTENDEES}    SA
${UNIVERSITY}    มหาวิทยาลัยขอนแก่น
${EMAIL}    testuat@gmail.com
${USERNAME}    porinut
${PASSWORD}    12345678
${REPEAT PASSWORD}    12345678
${INVALID TELEPHONE NUMBER}    08123
${INVALID STUDENT ID}    5930208
${INVALID BIRTHDAY}    12/31/
${INVALID PARENT PHONE NUMBER}    089876
${INVALID PASSWORD}    1234
${INVALID REPEAT PASSWORD}    1234
${INVALID PASSPORT}    AA75050
${DELAY}    0.05
${ERROR MESSAGE EMPTY GENDER}    กรุณาเลือกเพศและเลือกคำนำหน้า
${ERROR MESSAGE EMPTY TITLE NAME}    กรุณาเลือกคำนำหน้าชื่อ
${ERROR MESSAGE EMPTY FULL NAME}     กรุณากรอก ชื่อ - นามสกุล
${ERROR MESSAGE EMPTY BIRTHDAY}     
${ERROR MESSAGE EMPTY ID CARD}    รหัสบัตรประจำตัวประชาชนต้องเป็นตัวเลขทั้งหมด 13 หลัก
${ERROR MESSAGE ALEADY HAVE ID CARD}    รหัสบัตรประจำตัวประชาชนนี้ มีผู้อื่นใช้งานแล้ว    
${ERROR MESSAGE EMPTY PASSPORT}
${ERROR MESSAGE ALEADY HAVE PASSPORT}    รหัสบัตรประจำตัวประชาชนนี้ มีผู้อื่นใช้งานแล้ว   
${ERROR MESSAGE EMPTY STUDENT ID}     
${ERROR MESSAGE EMPTY TELEPHONE NUMBER}     
${ERROR MESSAGE EMPTY PARENT PHONE NUMBER}      
${ERROR MESSAGE EMPTY IMAGE}     กรุณาเลือกรูปภาพ
${ERROR MESSAGE EMPTY TYPE OF ATTENDEES}     กรุณาเลือกประเภทผู้เข้าร่วมงาน
${ERROR MESSAGE EMPTY UNIVERSITY}     กรุณาเลือกมหาวิทยาลัย
${ERROR MESSAGE EMPTY EMAIL}     
${ERROR MESSAGE EMPTY USERNAME} 
${ERROR MESSAGE ALEADY HAVE USERNAME}    Username นี้มีผู้อื่นใช้งานแล้ว
${ERROR MESSAGE EMPTY PASSWORD}     
${ERROR MESSAGE EMPTY REPEAT PASSWORD} 
${ERROR MESSAGE EMPTY LASTNAME}    ชื่อ - นามสกุล ต้องเป็นตัวอักษรที่ไม่ใช่ตัวเลข และมีวรรคระหว่างชื่อกับนามสกุล
${ERROR MESSAGE INVALID PASSWORD}     Password ต้องประกอบด้วยตัวเลขหรือตัวอักษร 8-14 หลัก
${ERROR MESSAGE INVALID PHONE}    เบอร์โทรติดต่อต้องอยู่ในรูปแบบตัวเลข 10 หลัก และสามารถมีขีด (-) ได้ หลังหลักที่ 3 และหลักที่ 6

*** Keywords ***
Open Home Page
    Open Browser    ${HOME URL}    ${BROWSER} 
    Maximize Browser Window
    Set Selenium Speed    ${DELAY} 
    
Input Register No Success With Id Card
  [Arguments]    ${gender}    ${title name}    ${full name}    ${birthday}    ${id card}    ${student id}    ${telephone number}    ${parent phone number}    ${facebook}    ${image}    ${type of attendees}    ${university}    ${email}    ${username}    ${password}     ${repeat password}     
  Click Element    //*[@id="side-main-menu"]/li[2]/a
  Click Element    //*[@id="pages-nav-list0"]/li[1]/a
  Click Element    ${gender}
  Click Element    //*[@id="prename"]
  Select From List By Value    //*[@id="prename"]    ${title name}
  Wait Until Element Is Visible    //*[@id="prename"]    4s
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

Input Register No Success With Passport
  [Arguments]    ${gender}   ${title name}    ${full name}    ${birthday}    ${passport}    ${student id}    ${telephone number}    ${parent phone number}    ${facebook}    ${image}    ${type of attendees}    ${university}    ${email}    ${username}    ${password}     ${repeat password}     
  Click Element    //*[@id="side-main-menu"]/li[2]/a
  Click Element    //*[@id="pages-nav-list0"]/li[1]/a
  Click Element     ${gender}
  Click Element    //*[@id="prename"]
  Select From List By Value    //*[@id="prename"]    ${title name}
  Input Text    inputfullname    ${full name}
  Press Key    xpath=//input[@id='inputBD']    ${birthday}
  Click Element    //*[@id="ShowIDcardNPass"]/div[3]/label
  Wait Until Element Is Visible    //*[@id="Passport"]    4s
  Input Text    Passport    ${passport}
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