*** Settings ***
Library    Selenium2Library
Library    robot.libraries.DateTime

*** Variables ***
${SERVER}    localhost
${BROWSER}    Chrome
${WELCOME URL}    http://${SERVER}/AtomGame/public/home 
${WELCOME REG}    http://${SERVER}/AtomGame/public/register
${Username}    purinut
*** Testcases ***
TC001 : Open Event Registration Page
  Open Browser    ${WELCOME URL}    ${BROWSER} 
  Maximize Browser Window
  
  
TC002 : Login Success:

  Click Element    //*[@id="loginBtn"]
  Double Click Element    //*[@id="Username"]
  Input Text    Username    porinut

  Double Click Element    //*[@id="Password"]
  Input Text    Password    12345678

  Click Button    login


	
