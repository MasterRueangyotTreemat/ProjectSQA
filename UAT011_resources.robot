*** Settings ***
Library     Selenium2Library

*** Variables ***
${SERVER}    localhost
${BROWSER}    chrome
${HOME URL}    http://${SERVER}/AtomGame/public/home
${DONOR URL}    http://${SERVER}/AtomGame/public/donor
${GENDER}    //*[@id="ShowGender"]/div[1]/label
${TITLE NAME}    P001
${FULL NAME}    Somnut Naja
${NO LASTNAME}    Somnut
${ORGANIZATION NAME}     Thai Sport
${BIRTHDAY}    12-31-1997
${INVALID BIRTHDAY}    12/31/1997
${DONATION CHANNEL}donation channel
${DONATION AMOUNT}donation amount
${PICTURE OF DONATION}     E:/ProjectsTeam/ProjectSQA/web.JPG
${LOGO OF ORGANIZATION}     E:/ProjectsTeam/ProjectSQA/web.JPG
${RECEIVE A RECEIPT DIRECTLY FROM ACCOUNTING, FACULTY OF SCIENCE}
${RECEIVE RECEIPT BY SHIPMENT}    123/2002 Moo 16 tumbon NaiMueang
${TELEPHONE NUMBER}    0812345678
${INVALID TELEPHONE NUMBER}    081234
${PARENT PHONE NUMBER}    0898765432
${FACEBOOK}    https://www.facebook.com/NutNinlaong
${PICTURE OF DONATION}     E:/ProjectsTeam/ProjectSQA/web.JPG
${LOGO OF ORGANIZATION}     E:/ProjectsTeam/ProjectSQA/web.JPG
${EMAIL}    testuat@gmail.com
${USERNAME}    porinut
${PASSWORD}    12345678
${INVALID PASSWORD}    1234
${REPEAT PASSWORD}    12345678
${DELAY}    0.05
${SUCCESS MESSAGE VERIFY DATA}    ยืนยันข้อมูลและหลักฐานการบริจาคสำเร็จ ทางคณะผู้จัดงานจะทำการตรวจสอบหลักฐานการบริจาคของท่านและติดต่อกลับไปเมื่อการตรวจสอบเสร็จสิ้น
${ERROR MESSAGE EMPTY GENDER}    กรุณาเลือกเพศและเลือกคำนำหน้า
${ERROR MESSAGE EMPTY TITLE NAME}    กรุณาเลือกคำนำหน้าชื่อ
${ERROR MESSAGE EMPTY FULL NAME}     กรุณากรอก ชื่อ - นามสกุล
${ERROR MESSAGE EMPTY BIRTHDAY}     กรุณาเลือกวันที่บริจาค
${ERROR MESSAGE EMPTY TELEPHONE NUMBER}     เบอร์โทรติดต่อต้องอยู่ในรูปแบบตัวเลข 10 หลัก และสามารถมีขีด (-) ได้ หลังหลักที่ 3 และหลักที่ 6
${ERROR MESSAGE DONATION CHANNEL}    กรุณากรอกช่องทางการบริจาค
${ERROR MESSAGE DONATION AMOUNT}    กรุณากรอกมูลค่าหรือจำนวนเงินที่บริจาค
${ERROR MESSAGE EMPTY PICTURE OF DONATION}     กรุณาเลือกรูปภาพ
${ERROR MESSAGE EMPTY EMAIL}     กรุณากรอก E-mail
${ERROR MESSAGE INVALID EMAIL}    E-mail ของท่านใช้งานไม่ได้ ต้องอยู่ในรูปแบบของ E-mail ที่ใช้งานได้เท่านั้น
${ERROR MESSAGE EMPTY LASTNAME}    ชื่อ - นามสกุล ต้องเป็นตัวอักษรที่ไม่ใช่ตัวเลข และมีวรรคระหว่างชื่อกับนามสกุล
${ERROR MESSAGE INVALID PASSWORD}     Password ต้องประกอบด้วยตัวเลขหรือตัวอักษร 8-14 หลัก
${ERROR MESSAGE INVALID PHONE}    เบอร์โทรติดต่อต้องอยู่ในรูปแบบตัวเลข 10 หลัก และสามารถมีขีด (-) ได้ หลังหลักที่ 3 และหลักที่ 6
${ERROR MESSAGE EMPTY RECEIVE RECEIPT BY ON-CARRIER}    กรุณาเลือกการรับใบเสร็จ

*** Keywords ***
Open Donor Page
    Open Browser    ${HOME URL}    ${BROWSER} 
    Maximize Browser Window
    Set Selenium Speed    ${DELAY} 
    Location Should Be     ${DONOR URL}

Input Register No Success With Id Card
  [Arguments]    ${gender}    ${title name}    ${full name}    ${birthday}    ${id card}    ${student id}    ${telephone number}    ${parent phone number}    ${facebook}    ${image}    ${type of attendees}    ${university}    ${email}    ${username}    ${password}     ${repeat password}     
  Click Element    //*[@id="side-main-menu"]/li[2]/a
  Click Element    //*[@id="pages-nav-list0"]/li[1]/a
  Click Element    ${gender}
  Click Element    //*[@id="prename"]
  Select From List By Value    //*[@id="prename"]    ${title name}
  Wait Until Element Is Visible    //*[@id="prename"]    4s
  Input Text    inputfullname    ${full name}
  Input Text    inputORG     

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