*** Settings ***
Resource          UAT001_resources.robot

*** Test Cases ***
TC001 : Open Event Registration Page
    Open Event Registration Page
    Location Should Be     ${HOME URL}
    
TC002 : Register Success With Id Card 
    Input Registeration Page    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${ID CARD PATH}    ${ID CARD ID PATH}    ${ID CARD}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD}     
    Location Should Contain    ${REGISTER URL}
    Wait Until Page Contains    ลงทะเบียนสำเร็จ

TC003 : Register Success With Id Card No Birthday
    Input Registeration Page    ${TITLE NAME}    ${FULL NAME}     ${EMPTY}     ${ID CARD PATH}    ${ID CARD ID PATH}    ${ID CARD}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD}     
    Location Should Contain    ${REGISTER URL}
    Wait Until Page Contains    ลงทะเบียนสำเร็จ

TC004 : Register Success With Id Card No Studetn Id
    Input Registeration Page    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${ID CARD PATH}    ${ID CARD ID PATH}    ${ID CARD}     ${EMPTY}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD}     
    Location Should Contain    ${REGISTER URL}
    Wait Until Page Contains    ลงทะเบียนสำเร็จ

TC005 : Register Success With Id Card No Parent Phone Number
    Input Registeration Page    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${ID CARD PATH}    ${ID CARD ID PATH}    ${ID CARD}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${EMPTY}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD}          
    Location Should Contain    ${REGISTER URL}
    Wait Until Page Contains    ลงทะเบียนสำเร็จ

TC006 : Register Success With Id Card No Facebook
    Input Registeration Page    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${ID CARD PATH}    ${ID CARD ID PATH}    ${ID CARD}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${EMPTY}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD}     
    Location Should Contain    ${REGISTER URL}
    Wait Until Page Contains    ลงทะเบียนสำเร็จ

TC007 : Register Success With Id Card No Birthday No Studetn Id No Parent Phone Number No Facebook
    Input Registeration Page    ${TITLE NAME}    ${FULL NAME}     ${EMPTY}     ${ID CARD PATH}    ${ID CARD ID PATH}    ${ID CARD}     ${EMPTY}     ${TELEPHONE NUMBER}     ${EMPTY}     ${EMPTY}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD}          
    Location Should Contain    ${REGISTER URL}
    Wait Until Page Contains    ลงทะเบียนสำเร็จ

TC008 : Register Success With Passport
    Input Registeration Page    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${PASSPORT PATH}    ${PASSPORT ID PATH}    ${PASSPORT}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD}          
    Location Should Contain    ${REGISTER URL}
    Wait Until Page Contains    ลงทะเบียนสำเร็จ

TC009 : Register Success With Passport No Birthday
    Input Registeration Page    ${TITLE NAME}    ${FULL NAME}     ${EMPTY}     ${PASSPORT PATH}    ${PASSPORT ID PATH}    ${PASSPORT}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD}
    Location Should Contain    ${REGISTER URL}
    Wait Until Page Contains    ลงทะเบียนสำเร็จ

TC010 : Register Success With Passport No Studetn Id
    Input Registeration Page    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${PASSPORT PATH}    ${PASSPORT ID PATH}    ${PASSPORT}     ${EMPTY}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD}
    Location Should Contain    ${REGISTER URL}
    Wait Until Page Contains    ลงทะเบียนสำเร็จ

TC011 : Register Success With Passport No Parent Phone Number
    Input Registeration Page    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${PASSPORT PATH}    ${PASSPORT ID PATH}    ${PASSPORT}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${EMPTY}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD}   
    Location Should Contain    ${REGISTER URL}
    Wait Until Page Contains    ลงทะเบียนสำเร็จ

TC012 : Register Success With Passport No Facebook
    Input Registeration Page    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${PASSPORT PATH}    ${PASSPORT ID PATH}    ${PASSPORT}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${EMPTY}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD}
    Location Should Contain    ${REGISTER URL}
    Wait Until Page Contains    ลงทะเบียนสำเร็จ

TC013 : Register Success With Passport No Birthday No Studetn Id No Parent Phone Number No Facebook
    Input Registeration Page    ${TITLE NAME}    ${FULL NAME}     ${EMPTY}     ${PASSPORT PATH}    ${PASSPORT ID PATH}    ${PASSPORT}     ${EMPTY}     ${TELEPHONE NUMBER}     ${EMPTY}     ${EMPTY}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD}
    Location Should Contain    ${REGISTER URL}
    Wait Until Page Contains    ลงทะเบียนสำเร็จ
    [Teardown]    Close Browser

