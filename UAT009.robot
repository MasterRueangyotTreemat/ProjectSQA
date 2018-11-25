*** Settings ***
Resource          UAT009_resources.robot

*** Test Cases ***
TC001 : Open Event Donor Page
    Open Donor Page
    Location Should Be    ${DONOR URL}
    
TC002 : Donate Success
    Input Donor Success    ${GENDER}    ${TITLE NAME}    ${FULL NAME}    ${ORGANIZATION NAME}    ${TELEPHONE NUMBER}    ${EMAIL}    ${DONATION DAY}    ${DONATION CHANNEL}    ${DONATION AMOUNT}    ${PICTURE OF DONATION}    ${LOGO OF ORGANIZATION}
    RECEIVE A RECEIPT DIRECTLY FROM ACCOUNTING FACULTY OF SCIENCE
    Location Should Contain    ${DONOR URL}
    Wait Until Page Contains   ${SUCCESS MESSAGE VERIFY DATA} 

TC002 : Donate Success No Logo 
    Input Donor Success    ${GENDER}    ${TITLE NAME}    ${FULL NAME}    ${ORGANIZATION NAME}    ${TELEPHONE NUMBER}    ${EMAIL}    ${DONATION DAY}    ${DONATION CHANNEL}    ${DONATION AMOUNT}    ${PICTURE OF DONATION}    ${LOGO OF ORGANIZATION}
    RECEIVE A RECEIPT DIRECTLY FROM ACCOUNTING FACULTY OF SCIENCE
    Location Should Contain    ${DONOR URL}
    Wait Until Page Contains   ${SUCCESS MESSAGE VERIFY DATA} 

TC003 : Donate Success Receive Receipt By Shipment
    Input Donor Success    ${GENDER}    ${TITLE NAME}    ${FULL NAME}    ${ORGANIZATION NAME}    ${TELEPHONE NUMBER}    ${EMAIL}    ${DONATION DAY}    ${DONATION CHANNEL}    ${DONATION AMOUNT}    ${PICTURE OF DONATION}    ${LOGO OF ORGANIZATION}
    RECEIVE RECEIPT BY SHIPMENT 
    Location Should Contain    ${DONOR URL}
    Wait Until Page Contains   ${SUCCESS MESSAGE VERIFY DATA} 

TC004 : Donate Success No Logo Receive Receipt By Shipment
    Input Donor Success    ${GENDER}    ${TITLE NAME}    ${FULL NAME}    ${ORGANIZATION NAME}    ${TELEPHONE NUMBER}    ${EMAIL}    ${DONATION DAY}    ${DONATION CHANNEL}    ${DONATION AMOUNT}    ${PICTURE OF DONATION}    ${LOGO OF ORGANIZATION}
    RECEIVE RECEIPT BY SHIPMENT 
    Location Should Contain    ${DONOR URL}
    Wait Until Page Contains   ${SUCCESS MESSAGE VERIFY DATA} 
    [Teardown]  Close Browser