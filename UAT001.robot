*** Settings ***
Resource          UAT001_resources.robot

*** Test Cases ***
TC001 : Open Event Registration Page
    Open Event Registration Page
    Location Should Be     ${HOME URL}
    
TC002 : Register Success With Id Card 
    Input Registration Page    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${ID CARD PATH}    ${ID CARD ID PATH}    ${VALID ID CARD}     ${VALID STUDENT ID}     ${VALID TELEPHONE NUMBER}     ${VALID PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${VALID PASSWORD}     ${VALID REPEAT PASSWORD}
    Location Should Contain    ${REGISTER URL}
    Wait Until Page Contains    ลงทะเบียนสำเร็จ

