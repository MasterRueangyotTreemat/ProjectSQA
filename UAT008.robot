*** Settings ***
Library     Selenium2Library

*** Variables ***
${SERVER}    localhost
${BROWSER}    chrome
${HOME URL}    http://${SERVER}/AtomGame/public/home
${PROFILE URL}     http://localhost/AtomGame/public/profile
${EDITPROFILE URL}    http://localhost/AtomGame/public/editProfile
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
${IMAGE}    E:/ProjectsTeam/ProjectSQA/web.JPG 
${TYPE OF ATTENDEES}    SA
${UNIVERSITY}    มหาวิทยาลัยขอนแก่น
${EMAIL}    testuat@gmail.com
${USERNAME}    porinut
${PASSWORD}    12345678
${REPEAT PASSWORD}    12345678
${DELAY}    0.05

*** Test Cases ***
TC01 : Open Home Page
    Open Browser    ${HOME URL}    ${BROWSER} 
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Location Should Contain    http://localhost/AtomGame/public/home

TC02 : Login
    Click Element    //*[@id="side-main-menu"]/li[2]/a
    Click Element    //*[@id="pages-nav-list0"]/li[2]/a
    Click Element    //*[@id="Username"]
    Input Text    Username    porinut 
    Click Element    //*[@id="Password"]
    Input Text    Password    12345678
    Click Button    login
    Wait Until Page Contains    ผู้เข้าใช้งาน Somnut Naja ได้เข้าสู่ระบบ

TC03 : Open Edit Profile Page :
    Click Element    //*[@id="notifications"]/img
    Go To    http://localhost/AtomGame/public/editProfile
    Wait Until Page Contains    ข้อมูลส่วนตัว

TC04 : Empty Profile Image :
    Click Element    //*[@id="ShowGender"]/div[1]/label
    Select From List By Value   //*[@id="prename"]    P001
    Input Text    inputfullname    Somnut Naja
    Press Key    xpath=//input[@id='inputBD']    12/31/2540
    Input Text    inputSTD    593020804-3
    Input Text    tell    0812345678
    Input Text    inputTelephoneP    0812345678
    Input Text    inputFacebook    https://www.facebook.com/NutNinlaong
    Input Text    E-mail    testuat@gmail.com
    Select From List By Value     //*[@id="inputType"]    SA
    Click Button    บันทึก   
    Location Should Be    ${EDITPROFILE URL}
    Wait Until Page Contains   กรุณาเลือกรูปภาพ

TC05 : Empty Name Title No Success :
    Click Element    //*[@id="notifications"]/img
    Go To    http://localhost/AtomGame/public/editProfile
    Wait Until Page Contains    ข้อมูลส่วนตัว
    Choose File   //*[@id="inputImg"]    ${IMAGE} 
    Click Element    //*[@id="ShowGender"]/div[1]/label
    Input Text    inputfullname    Somnut Naja
    Press Key    xpath=//input[@id='inputBD']    12/31/2540
    Input Text    inputSTD    593020804-3
    Input Text    tell    0812345678
    Input Text    inputTelephoneP    0812345678
    Input Text    inputFacebook    https://www.facebook.com/NutNinlaong
    Input Text    E-mail    testuat@gmail.com
    Select From List By Value     //*[@id="inputType"]    SA
    Click Button    บันทึก
    Location Should Be    ${EDITPROFILE URL}
    Wait Until Page Contains   กรุณาเลือกคำนำหน้าชื่อ

TC06 : Empty Full Name No Success
    Click Element    //*[@id="notifications"]/img
    Go To    http://localhost/AtomGame/public/editProfile
    Wait Until Page Contains    ข้อมูลส่วนตัว
    Choose File   //*[@id="inputImg"]    ${IMAGE} 
    Click Element    //*[@id="ShowGender"]/div[1]/label
    Select From List By Value   //*[@id="prename"]    P001
    Press Key    xpath=//input[@id='inputBD']    12/31/2540
    Input Text    inputSTD    593020804-3
    Input Text    tell    0812345678
    Input Text    inputTelephoneP    0812345678
    Input Text    inputFacebook    https://www.facebook.com/NutNinlaong
    Input Text    E-mail    testuat@gmail.com
    Select From List By Value     //*[@id="inputType"]    SA
    Click Button    บันทึก 
    Location Should Be    ${EDITPROFILE URL}
    Wait Until Page Contains   กรุณากรอก ชื่อ – นามสกุล

TC07 : Empty Telephone Number No Success
    Click Element    //*[@id="notifications"]/img
    Go To    http://localhost/AtomGame/public/editProfile
    Wait Until Page Contains    ข้อมูลส่วนตัว
    Choose File   //*[@id="inputImg"]    ${IMAGE} 
    Click Element    //*[@id="ShowGender"]/div[1]/label
    Select From List By Value   //*[@id="prename"]    P001
    Input Text    inputfullname    Somnut Naja
    Press Key    xpath=//input[@id='inputBD']    12/31/2540
    Input Text    inputSTD    593020804-3
    Input Text    inputTelephoneP    0812345678
    Input Text    inputFacebook    https://www.facebook.com/NutNinlaong
    Input Text    E-mail    testuat@gmail.com
    Select From List By Value     //*[@id="inputType"]    SA
    Click Button    บันทึก
    Location Should Be    ${EDITPROFILE URL}
    Wait Until Page Contains    เบอร์โทรติดต่อต้องอยู่ในรูปแบบตัวเลข 10 หลัก และสามารถมีขีด (-) ได้ หลังหลักที่ 3 และหลักที่ 6
    Wait Until Page Contains    กรุณากรอกหมายเลขโทรศัพท์
  

TC08 : Empty E-mail No Success
    Click Element    //*[@id="notifications"]/img
    Go To    http://localhost/AtomGame/public/editProfile
    Wait Until Page Contains    ข้อมูลส่วนตัว
    Choose File   //*[@id="inputImg"]    ${IMAGE} 
    Click Element    //*[@id="ShowGender"]/div[1]/label
    Select From List By Value   //*[@id="prename"]    P001
    Input Text    inputfullname    Somnut Naja
    Press Key    xpath=//input[@id='inputBD']    12/31/2540
    Input Text    inputSTD    593020804-3
    Input Text    tell    0812345678
    Input Text    inputTelephoneP    0812345678
    Input Text    inputFacebook    https://www.facebook.com/NutNinlaong
    Select From List By Value     //*[@id="inputType"]    SA
    Click Button    บันทึก
    Location Should Be    ${EDITPROFILE URL}
    Wait Until Page Contains    E-mail ของท่านใช้งานไม่ได้ ต้องอยู่ในรูปแบบของ E-mail ที่ใช้งานได้เท่านั้น
    Wait Until Page Contains    กรุณากรอก E-mail
 

TC09 : Empty Lastname No Success
    Click Element    //*[@id="notifications"]/img
    Go To    http://localhost/AtomGame/public/editProfile
    Wait Until Page Contains    ข้อมูลส่วนตัว
    Choose File   //*[@id="inputImg"]    ${IMAGE} 
    Click Element    //*[@id="ShowGender"]/div[1]/label
    Select From List By Value   //*[@id="prename"]    P001
    Input Text    inputfullname    Somnut
    Press Key    xpath=//input[@id='inputBD']    12/31/2540
    Input Text    inputSTD    593020804-3
    Input Text    tell    0812345678
    Input Text    inputTelephoneP    0812345678
    Input Text    inputFacebook    https://www.facebook.com/NutNinlaong
    Input Text    E-mail    testuat@gmail.com
    Select From List By Value     //*[@id="inputType"]    SA
    Click Button    บันทึก
    Location Should Be    ${EDITPROFILE URL}
    Wait Until Page Contains    ชื่อ - นามสกุล ต้องเป็นตัวอักษรที่ไม่ใช่ตัวเลข และมีวรรคระหว่างชื่อกับนามสกุล
    
TC10 : Invalid Telephone Number No Success
    Click Element    //*[@id="notifications"]/img
    Go To    http://localhost/AtomGame/public/editProfile
    Wait Until Page Contains    ข้อมูลส่วนตัว
    Choose File   //*[@id="inputImg"]    ${IMAGE} 
    Click Element    //*[@id="ShowGender"]/div[1]/label
    Select From List By Value   //*[@id="prename"]    P001
    Input Text    inputfullname    Somnut Naja
    Press Key    xpath=//input[@id='inputBD']    12/31/2540
    Input Text    inputSTD    593020804-3
    Input Text    tell    08123456789
    Input Text    inputTelephoneP    0812345678
    Input Text    inputFacebook    https://www.facebook.com/NutNinlaong
    Input Text    E-mail    testuat@gmail.com
    Select From List By Value     //*[@id="inputType"]    SA
    Click Button    บันทึก
    Location Should Be    ${EDITPROFILE URL}
    Wait Until Page Contains    เบอร์โทรติดต่อต้องอยู่ในรูปแบบตัวเลข 10 หลัก และสามารถมีขีด (-) ได้ หลังหลักที่ 3 และหลักที่ 6
    Wait Until Page Contains    กรุณากรอกหมายเลขโทรศัพท์
    [Teardown]  Close Browser