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
<<<<<<< HEAD

=======
>>>>>>> 1afa6cdc846035fe1c9ac4aac27ec936a71a0f70
  Click Button    login

TC003 : Open Register Sports and Athletics Competition Page:
  Click Element    //*[@id="side-main-menu"]/li[2]/a
  Click Element    //*[@id="pages-nav-list0"]/li[2]/a

TC004 : Register Sports Competition Success 1: 
  Click Element    //*[@id="ShowFormat"]/label[1]
  Click Element    //*[@id="ShowGender"]/label[2]
  Select From List By Value    //*[@id="inputName"]    S2019003
  Select From List By Value    //*[@id="inputREAL"]    T
  Click Button    เพิ่ม
	
