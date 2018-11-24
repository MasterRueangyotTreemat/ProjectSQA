*** Settings ***
Library     Selenium2Library

*** Variables ***
${SERVER}    localhost
${BROWSER}    Chrome
${HOME URL}    http://${SERVER}/AtomGame/public/home
${USERNAME}    porinut
${PASSWORD}    12345678
${SHOW NAME}    นายSomnut Naja
${DELAY}    0.1
${SPORT}    //*[@id="ShowFormat"]/label[1]
${ACTIVITIES}    //*[@id="ShowFormat"]/label[2]
${GENDER_FEMALE}    //*[@id="ShowGender"]/label[1] 
${GENDER_MALE}    //*[@id="ShowGender"]/label[2]
${GENDER_ALL}    //*[@id="ShowGender"]/label[3]
${}

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

Input Register Sports and Athletics Competition Page
  [Arguments]    ${SPORT}    ${GENDER_FEMALE}
  Click Element    //*[@id="side-main-menu"]/li[2]/a
  Click Element    //*[@id="pages-nav-list0"]/li[2]/a
  Click Element    ${SPORT}
  Click Element    ${GENDER_MALE}
  Select From List By Value    //*[@id="inputName"]    