*** Settings ***
Resource    UAT003_resources.robot

*** Test Cases ***
TC001 : Open Event Registration Page
  Open Event Registration Page
  
TC002 : Login Success:
  Input Login Success    ${USERNAME}   ${PASSWORD}    

TC003 : Open Register Sports and Athletics Competition Page:
  Input Register Sports and Athletics Competition Page    ${SHOW REGISTER PAGE}    ${REGISTER URL}  

TC004 : Register Sports Competition Success 1:
  Input Register Sports Competition Success 1    ${REGISTER URL}    ${SPORT}    ${GENDER_MALE}    ${FOOTBALL}    ${T}    ${SHOW REGISTER SUCCSESS}

TC005 : Register Sports Competition Success 2: 