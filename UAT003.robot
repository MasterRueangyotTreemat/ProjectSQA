*** Settings ***
Resource    UAT003_resources.robot

*** Test Cases ***
TC001 : Open Event Registration Page
  Open Event Registration Page
  
TC002 : Login Success:
  Input Login Success    ${USERNAME}   ${PASSWORD}    

TC003 : Open Register Sports and Athletics Competition Page:
  Input Register Sports and Athletics Competition Page    ${REGISTER URL}    ${SPORT}    ${GENDER_FEMALE}    ${SPORT}    ${GENDER_MALE}    ${FOOTBALL}    ${T}


