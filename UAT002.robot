*** Settings ***
Resource          UAT002_resources.robot

*** Test Cases ***
TC001 : Open Event Registration Page
    TC001 : Open Event Registration Page
    
TC002 : Register Success With Id Card 
    TC002 : Input Register Success With Id Card     ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${ID CARD}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD}     

TC003 : Register Success With Id Card No Birthday
    TC003 : Input Register Success With Id Card No Birthday  ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${ID CARD}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD}     

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

TC002 : Register Success 
    TC002 : Input Register Success No Birthday    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${ID CARD}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD}     
    [Teardown]     Close Browser
    
