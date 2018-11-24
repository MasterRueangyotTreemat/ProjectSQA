*** Settings ***
Resource    UAT003_resources.robot

*** Test Cases ***
TC001 : Open Event Registration Page
  Open Event Registration Page
  
  
TC002 : Login Success:
<<<<<<< HEAD
  Input Login Success    ${USERNAME}   ${PASSWORD}
=======
  Click Element    //*[@id="loginBtn"]
  Click Element    //*[@id="Username"]
  Input Text    Username    porinut 
  Click Element    //*[@id="Password"]
  Input Text    Password    12345678
<<<<<<< HEAD

=======
>>>>>>> 1afa6cdc846035fe1c9ac4aac27ec936a71a0f70
  Click Button    login
>>>>>>> 80ba026de8798bb7a2dc723ddcf8056ad2a4eb62

TC003 : Open Register Sports and Athletics Competition Page:
  Input Register Sports and Athletics Competition Page    ${SPORT}    ${GENDER_FEMALE}


