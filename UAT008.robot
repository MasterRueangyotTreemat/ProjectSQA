*** Settings ***
Library     Selenium2Library

*** Variables ***
${SERVER}    localhost
${BROWSER}    Chrome
${HOME URL}    http://${SERVER}/AtomGame/public/home
${REGISTER URL}    http://${SERVER}/AtomGame/public/registerSNA
${EDIT PROFILE URL}    http://${SERVER}/AtomGame/public/editProfile
${DELAY}    0.05
${USERNAME}    porinut
${PASSWORD}    12345678
${SHOW NAME}    ผู้เข้าใช้งาน Somnut Naja ได้เข้าสู่ระบบ

*** Test Cases ***
TC01 : Open Event EditProfile Page
    Open Browser    ${HOME URL}    ${BROWSER} 
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Location Should Contain    ${HOME URL} 

TC02 : Login
    Click Element    //*[@id="side-main-menu"]/li[2]/a
    Click Element    //*[@id="pages-nav-list0"]/li[2]/a
    Click Element    //*[@id="Username"]
    Input Text    Username    porinut 
    Click Element    //*[@id="Password"]
    Input Text    Password    12345678
    Click Button    login
    Wait Until Page Contains    ผู้เข้าใช้งาน Somnut Naja ได้เข้าสู่ระบบ

TC03 : Open Edit Profile Page 
    Click Element    //*[@id="notifications"]/img
    Click Element    /html/body/div[1]/header/nav/div/div/ul/li[1]/ul/li[2]/a