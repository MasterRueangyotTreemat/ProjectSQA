*** Settings ***
Library     Selenium2Library

*** Variables ***
${SERVER}    localhost
${BROWSER}    chrome
${HOME URL}    http://${SERVER}/AtomGame/public/home
${DONOR URL}    http://${SERVER}/AtomGame/public/donor
${GENDER}    //*[@id="ShowGender"]/div[1]/label
${TITLE NAME}    P005
${FULL NAME}    Somnut Naja
${NO LASTNAME}    Somnut
${ORGANIZATION NAME}     Thai Sport
${DONATION DAY}    10/04/2018
${INVALID DONATION DAY}    10/04/
${DONATION CHANNEL}    โอนเงิน
${DONATION AMOUNT}    200
${PICTURE OF DONATION}     E:/ProjectsTeam/ProjectSQA/web.JPG
${LOGO OF ORGANIZATION}     E:/ProjectsTeam/ProjectSQA/web.JPG
${RECEIVE RECEIPT BY SHIPMENT TEXTAREA}     ห้อง 214 หอ16 มหาวิทยาลัยขอนแก่น ตำบลในเมือง อำเภอเมือง จังหวัดขอนแก่น 40002
${TELEPHONE NUMBER}    0812345678
${INVALID TELEPHONE NUMBER}    081234
${EMAIL}    testuat@gmail.com
${USERNAME}    porinut
${PASSWORD}    12345678
${INVALID PASSWORD}    1234
${REPEAT PASSWORD}    12345678
${DELAY}    0.05
${R1}    //*[@id="ShowReceipt"]/div/div[1]/label 
${R2}    //*[@id="ShowReceipt"]/div/div[2]/label
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
    Open Browser    ${DONOR URL}    ${BROWSER} 
    Maximize Browser Window
    Set Selenium Speed    ${DELAY} 
    Location Should Be     ${DONOR URL}

Input Donor Success
  [Arguments]    ${gender}    ${title name}    ${full name}    ${organization name}    ${telephone number}    ${email}    ${donation day}    ${donation channel}    ${donation amount}    ${picture of donation}    ${logo of organization}
  Click Element    //*[@id="side-main-menu"]/li[6]/a
  Click Element    //*[@id="pages-nav-list3"]/li[2]/a
  Click Element    ${gender}
  Click Element    //*[@id="prename"]
  Select From List By Value    //*[@id="prename"]    ${title name}
  Wait Until Element Is Visible    //*[@id="prename"]    4s
  Input Text    inputfullname    ${full name}
  Input Text    inputORG    ${organization name}
  Input Text    tell    ${telephone number}
  Input Text    E-mail    ${email}
  Press Key    //*[@id="inputDDay"]    ${donation day}
  Input Text   //*[@id="inputDCha"]    ${donation channel}
  Input Text   //*[@id="inputDAm"]    ${donation amount}    
  Choose File    //*[@id="inputImgD"]    ${picture of donation}
  Choose File    //*[@id="inputImgL"]    ${logo of organization} 
  RECEIVE A RECEIPT DIRECTLY FROM ACCOUNTING FACULTY OF SCIENCE
  RECEIVE RECEIPT BY SHIPMENT
  
RECEIVE A RECEIPT DIRECTLY FROM ACCOUNTING FACULTY OF SCIENCE   
  Click Element   //*[@id="ShowReceipt"]/div/div[1]/label 
  Click Element    xpath=(//button[@type='submit'])[2]

RECEIVE RECEIPT BY SHIPMENT
  Click Element   //*[@id="ShowReceipt"]/div/div[2]/label
  Input Text    //*[@id="address"]    ${receive receipt by shipment textarea} 
  Click Element    xpath=(//button[@type='submit'])[2]