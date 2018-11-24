*** Settings ***
Resource          UAT012_resources.robot

*** Test Cases ***
TC001 : Open Event Donor Page
    Open Donor Page
    Location Should Be    ${DONOR URL}
    Wait Until Page Contains    
    
TC002 : Donate Success
    Input Donor Success    ${GENDER}    ${TITLE NAME}    ${FULL NAME}    ${ORGANIZATION NAME}    ${TELEPHONE NUMBER}    ${EMAIL}    ${DONATION DAY}    ${DONATION CHANNEL}    ${DONATION AMOUNT}    ${PICTURE OF DONATION}    ${LOGO OF ORGANIZATION}     ${RECEIVE A RECEIPT DIRECTLY FROM ACCOUNTING, FACULTY OF SCIENCE}    ${EMPTY}
    Location Should Contain    ${DONOR URL}

TC002 : Donate Success No Logo 
    Input Donor Success    ${GENDER}    ${TITLE NAME}    ${FULL NAME}    ${ORGANIZATION NAME}    ${TELEPHONE NUMBER}    ${EMAIL}    ${DONATION DAY}    ${DONATION CHANNEL}    ${DONATION AMOUNT}    ${PICTURE OF DONATION}    ${EMPTY}     ${RECEIVE A RECEIPT DIRECTLY FROM ACCOUNTING, FACULTY OF SCIENCE}    ${EMPTY}
    Location Should Contain    ${DONOR URL}

TC003 : Donate Success Receive Receipt By Shipment
    Input Donor Success    ${GENDER}    ${TITLE NAME}    ${FULL NAME}    ${ORGANIZATION NAME}    ${TELEPHONE NUMBER}    ${EMAIL}    ${DONATION DAY}    ${DONATION CHANNEL}    ${DONATION AMOUNT}    ${PICTURE OF DONATION}     ${LOGO OF ORGANIZATION}     ${EMPTY}    ${RECEIVE RECEIPT BY SHIPMENT}    ${RECEIVE RECEIPT BY SHIPMENT TEXTAREA}
    Location Should Contain    ${DONOR URL}

TC004 : Donate Success No Logo Receive Receipt By Shipment
    Input Donor Success    ${GENDER}    ${TITLE NAME}    ${FULL NAME}    ${ORGANIZATION NAME}    ${TELEPHONE NUMBER}    ${EMAIL}    ${DONATION DAY}    ${DONATION CHANNEL}    ${DONATION AMOUNT}    ${PICTURE OF DONATION}    ${EMPTY}    ${EMPTY}    ${RECEIVE RECEIPT BY SHIPMENT}    ${RECEIVE RECEIPT BY SHIPMENT TEXTAREA}
    Location Should Contain    ${DONOR URL}