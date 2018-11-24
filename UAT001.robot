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
    Wait Until Page Contains    ${ERROR MESSAGE ALEADY HAVE ID CARD}
    Wait Until Page Contains    ${ERROR MESSAGE ALEADY HAVE USERNAME}

TC004 : Register Success With Id Card No Studetn Id
    TC004 : Input Register Success With Id Card No Studetn Id    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${ID CARD}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD}     
    Location Should Contain    ${REGISTER URL}
    Wait Until Page Contains    ${ERROR MESSAGE ALEADY HAVE ID CARD}
    Wait Until Page Contains    ${ERROR MESSAGE ALEADY HAVE USERNAME}
    
TC002 : Register Success With Id Card 
    Input Registration Page    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${ID CARD PATH}    ${ID CARD ID PATH}    ${VALID ID CARD}     ${VALID STUDENT ID}     ${VALID TELEPHONE NUMBER}     ${VALID PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${VALID PASSWORD}     ${VALID REPEAT PASSWORD}
    Location Should Contain    ${REGISTER URL}
    Wait Until Page Contains    ${ERROR MESSAGE ALEADY HAVE ID CARD}
    Wait Until Page Contains    ${ERROR MESSAGE ALEADY HAVE USERNAME}


TC005 : Register Success With Id Card No Parent Phone Number
    Input Registration Page    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${ID CARD PATH}    ${ID CARD ID PATH}    ${VALID ID CARD}     ${VALID STUDENT ID}     ${EMPTY}     ${VALID PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${VALID PASSWORD}     ${VALID REPEAT PASSWORD}
    Location Should Contain    ${REGISTER URL}
    Wait Until Page Contains    ${ERROR MESSAGE ALEADY HAVE ID CARD}
    Wait Until Page Contains    ${ERROR MESSAGE ALEADY HAVE USERNAME}

TC006 : Register Success With Id Card No Facebook
    Input Registration Page    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${ID CARD PATH}    ${ID CARD ID PATH}    ${VALID ID CARD}     ${VALID STUDENT ID}     ${VALID TELEPHONE NUMBER}     ${VALID PARENT PHONE NUMBER}     ${EMPTY}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${VALID PASSWORD}     ${VALID REPEAT PASSWORD}
    Location Should Contain    ${REGISTER URL}
    Wait Until Page Contains    ${ERROR MESSAGE ALEADY HAVE ID CARD}
    Wait Until Page Contains    ${ERROR MESSAGE ALEADY HAVE USERNAME}
    
TC007 : Register Success With Id Card No Birthday No Student Id No Parent Phone Number No Facebook
    Input Registration Page    ${TITLE NAME}    ${FULL NAME}     ${EMPTY}     ${ID CARD PATH}    ${ID CARD ID PATH}    ${VALID ID CARD}     ${EMPTY}     ${VALID TELEPHONE NUMBER}     ${EMPTY}     ${EMPTY}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${VALID PASSWORD}     ${VALID REPEAT PASSWORD}
    Location Should Contain    ${REGISTER URL}
    Wait Until Page Contains    ${ERROR MESSAGE ALEADY HAVE ID CARD}
    Wait Until Page Contains    ${ERROR MESSAGE ALEADY HAVE USERNAME}

TC008 : Register Success With Passport
    Input Registration Page    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${PASSPORT PATH}    ${PASSPORT ID PATH}    ${VALID PASSPORT}     ${VALID STUDENT ID}     ${VALID TELEPHONE NUMBER}     ${VALID PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${VALID PASSWORD}     ${VALID REPEAT PASSWORD}
    Location Should Contain    ${REGISTER URL}
    Wait Until Page Contains    ${ERROR MESSAGE ALEADY HAVE USERNAME}

TC009 : Register Success With Passport No Birthday
    Input Registration Page    ${TITLE NAME}    ${FULL NAME}     ${EMPTY}     ${PASSPORT PATH}    ${PASSPORT ID PATH}    ${VALID PASSPORT}     ${VALID STUDENT ID}     ${VALID TELEPHONE NUMBER}     ${VALID PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${VALID PASSWORD}     ${VALID REPEAT PASSWORD}
    Location Should Contain    ${REGISTER URL}
    Wait Until Page Contains    ${ERROR MESSAGE ALEADY HAVE USERNAME}

TC010 : Register Success With Passport No Student Id
    Input Registration Page    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${PASSPORT PATH}    ${PASSPORT ID PATH}    ${VALID PASSPORT}     ${EMPTY}     ${VALID TELEPHONE NUMBER}     ${VALID PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${VALID PASSWORD}     ${VALID REPEAT PASSWORD}
    Location Should Contain    ${REGISTER URL}
    Wait Until Page Contains    ${ERROR MESSAGE ALEADY HAVE USERNAME}
    
TC011 : Register Success With Passport No Parent Phone Number
    Input Registration Page    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${PASSPORT PATH}    ${PASSPORT ID PATH}    ${VALID PASSPORT}     ${VALID STUDENT ID}     ${VALID TELEPHONE NUMBER}     ${EMPTY}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${VALID PASSWORD}     ${VALID REPEAT PASSWORD}
    Location Should Contain    ${REGISTER URL}
    Wait Until Page Contains    ${ERROR MESSAGE ALEADY HAVE USERNAME}

TC012 : Register Success With Passport No Facebook
    Input Registration Page    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${PASSPORT PATH}    ${PASSPORT ID PATH}    ${VALID PASSPORT}     ${VALID STUDENT ID}     ${VALID TELEPHONE NUMBER}     ${VALID PARENT PHONE NUMBER}     ${EMPTY}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${VALID PASSWORD}     ${VALID REPEAT PASSWORD}
    Location Should Contain    ${REGISTER URL}
    Wait Until Page Contains    ${ERROR MESSAGE ALEADY HAVE USERNAME}

TC013 : Register Success With Passport No Birthday No Student Id No Parent Phone Number No Facebook
    Input Registration Page    ${TITLE NAME}    ${FULL NAME}     ${EMPTY}     ${PASSPORT PATH}    ${PASSPORT ID PATH}    ${VALID PASSPORT}     ${EMPTY}     ${VALID TELEPHONE NUMBER}     ${EMPTY}     ${EMPTY}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${VALID PASSWORD}     ${VALID REPEAT PASSWORD}
    Location Should Contain    ${REGISTER URL}
    Wait Until Page Contains    ${ERROR MESSAGE ALEADY HAVE USERNAME}
    [Teardown]    Close Browser