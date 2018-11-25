*** Settings ***
Library     Selenium2Library

*** Variables ***
${SERVER}    localhost
${BROWSER}    chrome
${HOME URL}    http://${SERVER}/AtomGame/public/home
${EDITPROFILE URL}    http://localhost/AtomGame/public/profile
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

TC03 : Edit Image Profile
    Click Element    //*[@id="notifications"]/img
    Go To    http://localhost/AtomGame/public/editProfile
    Choose File    //*[@id="inputImg"]    D:/SQA/Pic.jpg
    Click Button    บันทึก
    Location Should Contain    ${EDITPROFILE URL}
    Wait Until Page Contains    แก้ไขข้อมูลส่วนตัวสำเร็จ

TC04 : Edit Name Titile Profile
    Click Element    //*[@id="notifications"]/img
    Go To    http://localhost/AtomGame/public/editProfile
    Click Element    //*[@id="prename"]
    Select From List By Value    //*[@id="prename"]    ${title name}
    Click Button    บันทึก
    Location Should Contain    ${EDITPROFILE URL}
    Wait Until Page Contains    แก้ไขข้อมูลส่วนตัวสำเร็จ

TC05 : Edit Full Name Profile
    Click Element    //*[@id="notifications"]/img
    Go To    http://localhost/AtomGame/public/editProfile
    Input Text    inputfullname    Somnut Ninlaong
    Click Button    บันทึก
    Location Should Contain    ${EDITPROFILE URL}
    Wait Until Page Contains    แก้ไขข้อมูลส่วนตัวสำเร็จ

TC06 : Edit Birthday Profile
    Click Element    //*[@id="notifications"]/img
    Go To    http://localhost/AtomGame/public/editProfile
    Press Key    xpath=//input[@id='inputBD']    05/26/2540
    Click Button    บันทึก
    Location Should Contain    ${EDITPROFILE URL}
    Wait Until Page Contains    แก้ไขข้อมูลส่วนตัวสำเร็จ

TC07 : Edit Student Id Profil
    Click Element    //*[@id="notifications"]/img
    Go To    http://localhost/AtomGame/public/editProfile
    Input Text    inputSTD    593456789-0
    Click Button    บันทึก
    Location Should Contain    ${EDITPROFILE URL}
    Wait Until Page Contains    แก้ไขข้อมูลส่วนตัวสำเร็จ

TC08 : Edit Telephone Number Profile
    Click Element    //*[@id="notifications"]/img
    Go To    http://localhost/AtomGame/public/editProfile
    Input Text    tell    0987654321
    Click Button    บันทึก
    Location Should Contain    ${EDITPROFILE URL}
    Wait Until Page Contains    แก้ไขข้อมูลส่วนตัวสำเร็จ

TC09 : Edit Parent Phone Number Profile
    Click Element    //*[@id="notifications"]/img
    Go To    http://localhost/AtomGame/public/editProfile
    Input Text    inputTelephoneP    0887654321
    Click Button    บันทึก
    Location Should Contain    ${EDITPROFILE URL}
    Wait Until Page Contains    แก้ไขข้อมูลส่วนตัวสำเร็จ

TC10 : Edit Facebook Profile
    Click Element    //*[@id="notifications"]/img
    Go To    http://localhost/AtomGame/public/editProfile
    Input Text    inputFacebook    https://www.facebook.com/NutSupreme
    Click Button    บันทึก
    Location Should Contain    ${EDITPROFILE URL}
    Wait Until Page Contains    แก้ไขข้อมูลส่วนตัวสำเร็จ

TC11 : Edit E-mail Profile
    Click Element    //*[@id="notifications"]/img
    Go To    http://localhost/AtomGame/public/editProfile
    Input Text    E-mail    porinut12345@gmail.com 
    Click Button    บันทึก
    Location Should Contain    ${EDITPROFILE URL}
    Wait Until Page Contains    แก้ไขข้อมูลส่วนตัวสำเร็จ

TC12 : Edit Type Of Attendees Profile
    Click Element    //*[@id="notifications"]/img
    Go To    http://localhost/AtomGame/public/editProfile
    Select From List By Value     //*[@id="inputType"]    SA
    Click Button    บันทึก
    Location Should Contain    ${EDITPROFILE URL}
    Wait Until Page Contains    แก้ไขข้อมูลส่วนตัวสำเร็จ
    [Teardown]    Close Browser