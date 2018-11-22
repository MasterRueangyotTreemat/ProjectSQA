*** Settings ***
Library    Selenium2Library
Library    robot.libraries.DateTime

*** Variables ***
${SERVER}    localhost
${BROWSER}    Chrome
${WELCOME URL}    http://${SERVER}/AtomGame/public/home 
${WELCOME REG}    http://${SERVER}/AtomGame/public/register
${USERNAME}    porinut
${DELAY}    0.05
*** Testcases ***
TC001 : Open Event Registration Page
  Open Browser    ${WELCOME URL}    ${BROWSER} 
  Set Selenium Speed    ${DELAY}
  Maximize Browser Window
  
TC002 : Login Success:
  Click Element    //*[@id="loginBtn"]
  Click Element    //*[@id="Username"]
  Input Text    Username    porinut 
  Click Element    //*[@id="Password"]
  Input Text    Password    12345678
  Click Button    login
  


	