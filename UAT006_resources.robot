*** Settings ***
Library     Selenium2Library

*** Variables ***
${SERVER}    localhost
${BROWSER}    Chrome
${HOME URL}    http://${SERVER}/AtomGame/public/home
${REGISTER URL}    http://${SERVER}/AtomGame/public/registerSNA
${DELAY}    0.05
${USERNAME}    porinut
${PASSWORD}    12345678
${SHOW NAME}    ผู้เข้าใช้งาน Somnut Naja ได้เข้าสู่ระบบ

*** Keywords ***
Open Event Registration Page
  Open Browser    ${HOME URL}    ${BROWSER} 
  Maximize Browser Window
  Set Selenium Speed    ${DELAY}
  Location Should Be     ${HOME URL}

Login Fail : (Username ถูก Password ผิด)
  [Arguments]    ${username}   ${password}  
  Click Element    //*[@id="loginBtn"]
  Click Element    //*[@id="Username"]
  Input Text    Username    ${username}
  Click Element    //*[@id="Password"]
  Input Text    Password    ${password}
  Click Button    login