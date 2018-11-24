*** Settings ***
Resource          UAT001_resources.robot

*** Test Cases ***
TC001 : Open Home Page
    Open Home Page
    Location Should Contain    ${HOME URL}
    
TC002 : Register Success With Id Card 
    Input Registration Page    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${ID CARD PATH}    ${ID CARD ID PATH}    ${VALID ID CARD}     ${VALID STUDENT ID}     ${VALID TELEPHONE NUMBER}     ${VALID PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${VALID PASSWORD}     ${VALID REPEAT PASSWORD}
    Location Should Contain    ${REGISTER URL}
    Wait Until Page Contains    ลงทะเบียนสำเร็จ

TC003 : Register Success With Id Card No Birthday
    Input Registration Page    ${TITLE NAME}    ${FULL NAME}     ${EMPTY}     ${ID CARD PATH}    ${ID CARD ID PATH}    ${VALID ID CARD}     ${VALID STUDENT ID}     ${VALID TELEPHONE NUMBER}     ${VALID PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${VALID PASSWORD}     ${VALID REPEAT PASSWORD}
    Location Should Contain    ${REGISTER URL}
    Wait Until Page Contains    ${ERROR MESSAGE ALEADY HAVE ID CARD}
    Wait Until Page Contains    ${ERROR MESSAGE ALEADY HAVE USERNAME}
    Wait Until Page Does Not Contain    ลงทะเบียนสำเร็จ

TC004 : Register Success With Id Card No Studetn Id
    Input Registration Page    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${ID CARD PATH}    ${ID CARD ID PATH}    ${EMPTY}     ${VALID STUDENT ID}     ${VALID TELEPHONE NUMBER}     ${VALID PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${VALID PASSWORD}     ${VALID REPEAT PASSWORD}
    Location Should Contain    ${REGISTER URL}
    Wait Until Page Contains    ${ERROR MESSAGE ALEADY HAVE ID CARD}
    Wait Until Page Contains    ${ERROR MESSAGE ALEADY HAVE USERNAME}
    Wait Until Page Does Not Contain    ลงทะเบียนสำเร็จ

TC005 : Register Success With Id Card No Parent Phone Number
    Input Registration Page    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${ID CARD PATH}    ${ID CARD ID PATH}    ${VALID ID CARD}     ${VALID STUDENT ID}     ${EMPTY}     ${VALID PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${VALID PASSWORD}     ${VALID REPEAT PASSWORD}
    Location Should Contain    ${REGISTER URL}
    Wait Until Page Contains    ${ERROR MESSAGE ALEADY HAVE ID CARD}
    Wait Until Page Contains    ${ERROR MESSAGE ALEADY HAVE USERNAME}
    Wait Until Page Does Not Contain    ลงทะเบียนสำเร็จ

TC006 : Register Success With Id Card No Facebook
    Input Registration Page    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${ID CARD PATH}    ${ID CARD ID PATH}    ${VALID ID CARD}     ${VALID STUDENT ID}     ${VALID TELEPHONE NUMBER}     ${VALID PARENT PHONE NUMBER}     ${EMPTY}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${VALID PASSWORD}     ${VALID REPEAT PASSWORD}
    Location Should Contain    ${REGISTER URL}
    Wait Until Page Contains    ${ERROR MESSAGE ALEADY HAVE ID CARD}
    Wait Until Page Contains    ${ERROR MESSAGE ALEADY HAVE USERNAME}
    Wait Until Page Does Not Contain    ลงทะเบียนสำเร็จ
    
TC007 : Register Success With Id Card No Birthday No Student Id No Parent Phone Number No Facebook
    Input Registration Page    ${TITLE NAME}    ${FULL NAME}     ${EMPTY}     ${ID CARD PATH}    ${ID CARD ID PATH}    ${VALID ID CARD}     ${EMPTY}     ${VALID TELEPHONE NUMBER}     ${EMPTY}     ${EMPTY}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${VALID PASSWORD}     ${VALID REPEAT PASSWORD}
    Location Should Contain    ${REGISTER URL}
    Wait Until Page Contains    ${ERROR MESSAGE ALEADY HAVE ID CARD}
    Wait Until Page Contains    ${ERROR MESSAGE ALEADY HAVE USERNAME}
    Wait Until Page Does Not Contain    ลงทะเบียนสำเร็จ

TC008 : Register Success With Passport
    Input Registration Page    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${PASSPORT PATH}    ${PASSPORT ID PATH}    ${VALID PASSPORT}     ${VALID STUDENT ID}     ${VALID TELEPHONE NUMBER}     ${VALID PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${VALID PASSWORD}     ${VALID REPEAT PASSWORD}
    Location Should Contain    ${REGISTER URL}
    Wait Until Page Contains    ${ERROR MESSAGE ALEADY HAVE USERNAME}
    Wait Until Page Does Not Contain    ลงทะเบียนสำเร็จ

TC009 : Register Success With Passport No Birthday
    Input Registration Page    ${TITLE NAME}    ${FULL NAME}     ${EMPTY}     ${PASSPORT PATH}    ${PASSPORT ID PATH}    ${VALID PASSPORT}     ${VALID STUDENT ID}     ${VALID TELEPHONE NUMBER}     ${VALID PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${VALID PASSWORD}     ${VALID REPEAT PASSWORD}
    Location Should Contain    ${REGISTER URL}
    Wait Until Page Contains    ${ERROR MESSAGE ALEADY HAVE USERNAME}
    Wait Until Page Does Not Contain    ลงทะเบียนสำเร็จ

TC010 : Register Success With Passport No Student Id
    Input Registration Page    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${PASSPORT PATH}    ${PASSPORT ID PATH}    ${VALID PASSPORT}     ${EMPTY}     ${VALID TELEPHONE NUMBER}     ${VALID PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${VALID PASSWORD}     ${VALID REPEAT PASSWORD}
    Location Should Contain    ${REGISTER URL}
    Wait Until Page Contains    ${ERROR MESSAGE ALEADY HAVE USERNAME}
    Wait Until Page Does Not Contain    ลงทะเบียนสำเร็จ
    
TC011 : Register Success With Passport No Parent Phone Number
    Input Registration Page    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${PASSPORT PATH}    ${PASSPORT ID PATH}    ${VALID PASSPORT}     ${VALID STUDENT ID}     ${VALID TELEPHONE NUMBER}     ${EMPTY}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${VALID PASSWORD}     ${VALID REPEAT PASSWORD}
    Location Should Contain    ${REGISTER URL}
    Wait Until Page Contains    ${ERROR MESSAGE ALEADY HAVE USERNAME}
    Wait Until Page Does Not Contain    ลงทะเบียนสำเร็จ

TC012 : Register Success With Passport No Facebook
    Input Registration Page    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${PASSPORT PATH}    ${PASSPORT ID PATH}    ${VALID PASSPORT}     ${VALID STUDENT ID}     ${VALID TELEPHONE NUMBER}     ${VALID PARENT PHONE NUMBER}     ${EMPTY}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${VALID PASSWORD}     ${VALID REPEAT PASSWORD}
    Location Should Contain    ${REGISTER URL}
    Wait Until Page Contains    ${ERROR MESSAGE ALEADY HAVE USERNAME}
    Wait Until Page Does Not Contain    ลงทะเบียนสำเร็จ

TC013 : Register Success With Passport No Birthday No Student Id No Parent Phone Number No Facebook
    Input Registration Page    ${TITLE NAME}    ${FULL NAME}     ${EMPTY}     ${PASSPORT PATH}    ${PASSPORT ID PATH}    ${VALID PASSPORT}     ${EMPTY}     ${VALID TELEPHONE NUMBER}     ${EMPTY}     ${EMPTY}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${VALID PASSWORD}     ${VALID REPEAT PASSWORD}
    Location Should Contain    ${REGISTER URL}
    Wait Until Page Contains    ${ERROR MESSAGE ALEADY HAVE USERNAME}
    Wait Until Page Does Not Contain    ลงทะเบียนสำเร็จ
    [Teardown]    Close Browser
