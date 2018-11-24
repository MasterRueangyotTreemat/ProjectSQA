*** Settings ***
Resource          UAT001_resources.robot


*** Test Cases ***
TC001 : Open Event Registration Page
  Open Event Registration Page

    
TC002 : Register Success With Id Card 
    Input Register Success    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${ID CARD}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD}     
    Location Should Contain    ${REGISTER URL}
    Wait Until Page Contains    ลงทะเบียนสำเร็จ
TC003 : Register Success With Id Card No Birthday
    Input Register Success    ${TITLE NAME}    ${FULL NAME}     ${EMPTY}     ${ID CARD}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD}     
    Location Should Contain    ${REGISTER URL}
    Wait Until Page Contains    ลงทะเบียนสำเร็จ
TC004 : Register Success With Id Card No Studetn Id
    TC004 : Input Register Success With Id Card No Studetn Id    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${ID CARD}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD}     

TC005 : Register Success With Id Card No Parent Phone Number
    TC005 : Input Register Success With Id Card No Parent Phone Number    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${ID CARD}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD}     

TC006 : Register Success With Id Card No Facebook
    TC006 : Input Register Success With Id Card No Facebook    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${ID CARD}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD}     

TC007 : Register Success With Id Card No Birthday No Studetn Id No Parent Phone Number No Facebook
    TC007 : Input Register Success With Id Card No Birthday No Studetn Id No Parent Phone Number No Facebook    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${ID CARD}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD}     

TC008 : Register Success With Passport
    TC008 : Input Register Success With Passport     ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${PASSPORT}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD}     

TC009 : Register Success With Passport No Birthday
    TC009 : Input Register Success With Passport No Birthday    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${PASSPORT}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD}     

TC010 : Register Success With Passport No Studetn Id
    TC010 : Input Register Success With Passport No Studetn Id    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${PASSPORT}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD}     

TC011 : Register Success With Passport No Parent Phone Number
    TC011 : Input Register Success With Passport No Parent Phone Number    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${PASSPORT}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD}     

TC012 : Register Success With Passport No Facebook
    TC012 : Input Register Success With Passport No Facebook    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${PASSPORT}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD}

TC013 : Register Success With Passport No Birthday No Studetn Id No Parent Phone Number No Facebook
    TC013 : Input Register Success With Passport No Birthday No Studetn Id No Parent Phone Number No Facebook    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${PASSPORT}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD}
    [Teardown]    Close Browser

