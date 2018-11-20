<<<<<<< HEAD
rgeryhtyrjyflhmigfhkfxb,.mnbjkxfljfbkfm
=======
*** Settings ***
Library    Selenium2Library
Library    robot.libraries.DateTime

*** Variables ***
${SERVER}    localhost
${BROWSER}    Chrome
${WELCOME URL}    http://${SERVER}/AtomGame/public/home 
${WELCOME REG}    http://${SERVER}/AtomGame/public/register
*** Testcases ***
TC001 : Open Event Registration Page
  Open Browser    ${WELCOME URL}    ${BROWSER} 
  Maximize Browser Window
  
TC002 : Login Success:
  Click Element    //*[@id="loginBtn"]
  Click Element    //*[@id="Username"]
  Input Text    Username    purinut
  Input Text    Password    12345678
  Click Button    login


	
>>>>>>> 7c2ba25006c1629230776fef22f8873a7651b0d3
