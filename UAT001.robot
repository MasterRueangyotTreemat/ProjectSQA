*** Settings ***
Resource          resources.robot

*** Test Cases ***
TC001 : Open Event Registration Page
    TC001 : Open Event Registration Page
TC002  : Register Success 
    TC002 : Register Success 
    Input Register Success form    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${ID CARD}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD}     
    Close Browser