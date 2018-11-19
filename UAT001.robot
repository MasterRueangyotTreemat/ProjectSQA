*** Settings ***
Documentation     A test suite with a single test for valid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resources.robot

*** Test Cases ***
Testing TC01 Success
    Open Event Registration Page
    Input Register Success form     ${TITLE NAME}    ${FULL NAME}    ${BIRTHDAY}     ${ID CARD}      ${STUDENT ID}       ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}      ${FACEBOOK}     ${TYPE OF ATTENDEES}        ${UNIVERSITY}       ${EMAIL}        ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD}     
    [Teardown] Close Browser