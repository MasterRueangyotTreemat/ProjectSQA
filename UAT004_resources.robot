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
${DELAY}    0.09
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
${Empty All But Enter}    กรุณาเลือกรูปแบบการแข่งขัน

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
  Choose File   //*[@id="inputImg"]    ${image} 
  Select From List By Value     //*[@id="inputType"]    ${type of attendees}
  Select From List By Value     //*[@id="inputUNS"]    ${university}
  Input Text    E-mail    ${email}
  Input Text    inputUsername    ${username}
  Input Text    inputPassword    ${password}
  Input Text    inputCPassword    ${repeat password}
  Click Button    ลงทะเบียน
