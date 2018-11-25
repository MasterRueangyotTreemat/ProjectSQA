*** Settings ***
Library     Selenium2Library

*** Variables ***
${SERVER}    localhost
${BROWSER}    Chrome
${HOME URL}    http://${SERVER}/AtomGame/public/home
${REGISTER URL}    http://${SERVER}/AtomGame/public/registerSNA
${VIEW PROFILE URL}    http://${SERVER}/AtomGame/public/profile
${USERNAME}    porinut
${PASSWORD}    12345678
${SHOW NAME}    ผู้เข้าใช้งาน Somnut Naja ได้เข้าสู่ระบบ
${SHOW REGISTER PAGE}    ลงทะเบียนแข่งขันกีฬาและกิจกรรม
${SHOW REGISTER SUCCSESS}    ลงทะเบียนแข่งขันสำเร็จ
${DELAY}    0.05
${SPORT}    //*[@id="ShowFormat"]/label[1]
${ACTIVITIES}    //*[@id="ShowFormat"]/label[2]
${GENDER_FEMALE}    //*[@id="ShowGender"]/label[1] 
${GENDER_MALE}    //*[@id="ShowGender"]/label[2]
${GENDER_ALL}    //*[@id="ShowGender"]/label[3]
${FOOTBALL}    S2019003 
${BADMINTON}    S2019006
${ESPAK_MUZZLE}    S2019007 
${FUTSAL}    S2019013
${200M}    S2019015
${ON GROUND PLAYER}    T
${ALTERNATE}    S
${NutLogin}    “ผู้เข้าใช้งาน Somnut Naja ได้เข้าสู่ระบบ”

*** Keywords ***
Open Event Registration Page
  Open Browser    ${HOME URL}    ${BROWSER} 
  Maximize Browser Window
  Set Selenium Speed    ${DELAY}
  Location Should Be     ${HOME URL}

Input Login Success
  [Arguments]    ${username}   ${password}   
  Click Element    //*[@id="loginBtn"]
  Click Element    //*[@id="Username"]
  Input Text    Username    ${username}
  Click Element    //*[@id="Password"]
  Input Text    Password    ${password}
  Click Button    login
  Wait Until Page Contains    ${SHOW NAME}

View Profile
    Click Element    //*[@id="notifications"]/img   /html/body/div[1]/header/nav/div/div/ul/li[1]/ul
    

