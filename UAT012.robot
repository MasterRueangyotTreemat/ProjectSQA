*** Settings ***
Resource          UAT012_resources.robot

*** Test Cases ***
TC001 : Open Event Donor Page
    Open Donor Page
    Location Should Be    ${DONOR URL}
    
TC002 : Donate No Success Empty Gender
    Input Donor Success    ${EMPTY}    ${TITLE NAME}    ${FULL NAME}    ${ORGANIZATION NAME}    ${TELEPHONE NUMBER}    ${EMAIL}    ${DONATION DAY}    ${DONATION CHANNEL}    ${DONATION AMOUNT}    ${PICTURE OF DONATION}    ${LOGO OF ORGANIZATION}
    RECEIVE RECEIPT BY SHIPMENT 
    Location Should Contain    ${DONOR URL}
    Wait Until Page Contains   ${ERROR MESSAGE EMPTY GENDER}

TC003 : Donate No Success Empty Title Name
    Input Donor Success    ${GENDER}    ${EMPTY}    ${FULL NAME}    ${ORGANIZATION NAME}    ${TELEPHONE NUMBER}    ${EMAIL}    ${DONATION DAY}    ${DONATION CHANNEL}    ${DONATION AMOUNT}    ${PICTURE OF DONATION}    ${LOGO OF ORGANIZATION}
    RECEIVE RECEIPT BY SHIPMENT 
    Location Should Contain    ${DONOR URL}
    Wait Until Page Contains     ${ERROR MESSAGE EMPTY TITLE NAME}

TC004 : Donate No Success Empty Full Name
    Input Donor Success    ${GENDER}    ${TITLE NAME}    ${EMPTY}    ${ORGANIZATION NAME}    ${TELEPHONE NUMBER}    ${EMAIL}    ${DONATION DAY}    ${DONATION CHANNEL}    ${DONATION AMOUNT}    ${PICTURE OF DONATION}    ${LOGO OF ORGANIZATION}
    RECEIVE RECEIPT BY SHIPMENT 
    Location Should Contain    ${DONOR URL}
    Wait Until Page Contains    ${ERROR MESSAGE EMPTY FULL NAME}

TC005 : Donate No Success Empty Last Name
    Input Donor Success    ${GENDER}    ${TITLE NAME}    ${NO LASTNAME}    ${ORGANIZATION NAME}    ${TELEPHONE NUMBER}    ${EMAIL}    ${DONATION DAY}    ${DONATION CHANNEL}    ${DONATION AMOUNT}    ${PICTURE OF DONATION}    ${LOGO OF ORGANIZATION}
    RECEIVE RECEIPT BY SHIPMENT 
    Location Should Contain    ${DONOR URL}
    Wait Until Page Contains    ${ERROR MESSAGE NO LASTNAME}

TC006 : Donate No Success Empty Organization
    Input Donor Success    ${GENDER}    ${TITLE NAME}    ${FULL NAME}    ${EMPTY}    ${TELEPHONE NUMBER}    ${EMAIL}    ${DONATION DAY}    ${DONATION CHANNEL}    ${DONATION AMOUNT}    ${PICTURE OF DONATION}    ${LOGO OF ORGANIZATION}
    RECEIVE RECEIPT BY SHIPMENT 
    Location Should Contain    ${DONOR URL}
    Wait Until Page Contains   ${ERROR MESSAGE EMPTY ORGANIZATION NAME}  

TC007 : Donate No Success Empty Telephone Number
    Input Donor Success    ${GENDER}    ${TITLE NAME}    ${FULL NAME}    ${ORGANIZATION NAME}    ${EMPTY}    ${EMAIL}    ${DONATION DAY}    ${DONATION CHANNEL}    ${DONATION AMOUNT}    ${PICTURE OF DONATION}    ${LOGO OF ORGANIZATION}
    RECEIVE RECEIPT BY SHIPMENT 
    Location Should Contain    ${DONOR URL}
    Wait Until Page Contains   ${ERROR MESSAGE EMPTY TELEPHONE NUMBER}

TC008 : Donate No Success Empty E-mail
    Input Donor Success    ${GENDER}    ${TITLE NAME}    ${FULL NAME}    ${ORGANIZATION NAME}    ${TELEPHONE NUMBER}    ${EMPTY}    ${DONATION DAY}    ${DONATION CHANNEL}    ${DONATION AMOUNT}    ${PICTURE OF DONATION}    ${LOGO OF ORGANIZATION}
    RECEIVE RECEIPT BY SHIPMENT 
    Location Should Contain    ${DONOR URL}
    Wait Until Page Contains   ${ERROR MESSAGE EMPTY EMAIL} 


TC009 : Donate No Success Empty Donation Day
    Input Donor Success    ${GENDER}    ${TITLE NAME}    ${FULL NAME}    ${ORGANIZATION NAME}    ${TELEPHONE NUMBER}    ${EMAIL}    ${EMPTY}    ${DONATION CHANNEL}    ${DONATION AMOUNT}    ${PICTURE OF DONATION}    ${LOGO OF ORGANIZATION}
    RECEIVE RECEIPT BY SHIPMENT 
    Location Should Contain    ${DONOR URL}
    Wait Until Page Contains     ${ERROR MESSAGE EMPTY DONATION DAY} 

TC010 : Donate No Success Empty Donation Channel
    Input Donor Success    ${GENDER}    ${TITLE NAME}    ${FULL NAME}    ${ORGANIZATION NAME}    ${TELEPHONE NUMBER}    ${EMAIL}    ${DONATION DAY}    ${EMPTY}    ${DONATION AMOUNT}    ${PICTURE OF DONATION}    ${LOGO OF ORGANIZATION}
    RECEIVE RECEIPT BY SHIPMENT 
    Location Should Contain    ${DONOR URL}
    Wait Until Page Contains    ${ERROR MESSAGE DONATION CHANNEL}

TC011 : Donate No Success Empty Donation Amount
    Input Donor Success    ${GENDER}    ${TITLE NAME}    ${FULL NAME}    ${ORGANIZATION NAME}    ${TELEPHONE NUMBER}    ${EMAIL}    ${DONATION DAY}    ${DONATION CHANNEL}   ${EMPTY}    ${PICTURE OF DONATION}    ${LOGO OF ORGANIZATION}
    RECEIVE RECEIPT BY SHIPMENT 
    Location Should Contain    ${DONOR URL}
    Wait Until Page Contains    ${ERROR MESSAGE DONATION AMOUNT} 

TC012 : Donate No Success Empty Picture of Donation
    Input Donor Success    ${GENDER}    ${TITLE NAME}    ${FULL NAME}    ${ORGANIZATION NAME}    ${TELEPHONE NUMBER}    ${EMAIL}    ${DONATION DAY}    ${DONATION CHANNEL}    ${DONATION AMOUNT}    ${PICTURE OF DONATION}    ${LOGO OF ORGANIZATION}
    RECEIVE RECEIPT BY SHIPMENT 
    Location Should Contain    ${DONOR URL}
    Wait Until Page Contains    ${ERROR MESSAGE EMPTY PICTURE OF DONATION} 

TC013 : Donate No Success Empty Receive Receipt By On-Carrier
    Input Donor Success    ${GENDER}    ${TITLE NAME}    ${FULL NAME}    ${ORGANIZATION NAME}    ${TELEPHONE NUMBER}    ${EMAIL}    ${DONATION DAY}    ${DONATION CHANNEL}    ${DONATION AMOUNT}    ${PICTURE OF DONATION}    ${LOGO OF ORGANIZATION}
    Location Should Contain    ${DONOR URL}
    Wait Until Page Contains   ${ERROR MESSAGE EMPTY RECEIVE RECEIPT BY ON-CARRIER} 


TC014 : Donate No Success Empty Receive Receipt By On-Carrier No Address
    Input Donor Success    ${GENDER}    ${TITLE NAME}    ${FULL NAME}    ${ORGANIZATION NAME}    ${TELEPHONE NUMBER}    ${EMAIL}    ${DONATION DAY}    ${DONATION CHANNEL}    ${DONATION AMOUNT}    ${PICTURE OF DONATION}    ${LOGO OF ORGANIZATION}
    RECEIVE RECEIPT BY SHIPMENT NO ADDRESS 
    Location Should Contain    ${DONOR URL}
    Wait Until Page Contains   ${ERROR MESSAGE EMPTY RECEIVE RECEIPT BY ON-CARRIER NO ADDRESS} 

TC015 : Donate No Success Donate No Success Invalid Telephone Number
    Input Donor Success    ${GENDER}    ${TITLE NAME}    ${FULL NAME}    ${ORGANIZATION NAME}    ${TELEPHONE NUMBER}    ${EMAIL}    ${DONATION DAY}    ${DONATION CHANNEL}    ${DONATION AMOUNT}    ${PICTURE OF DONATION}    ${LOGO OF ORGANIZATION}
    RECEIVE RECEIPT BY SHIPMENT NO ADDRESS
    Location Should Contain    ${DONOR URL}
    Wait Until Page Contains    ${ERROR MESSAGE INVALID PHONE}

TC016 : Donate No Success Invalid Telephone Number
    Input Donor Success    ${GENDER}    ${TITLE NAME}    ${FULL NAME}    ${ORGANIZATION NAME}    ${INVALID TELEPHONE NUMBER NOT EXCEED}    ${EMAIL}    ${DONATION DAY}    ${DONATION CHANNEL}    ${DONATION AMOUNT}    ${PICTURE OF DONATION}    ${LOGO OF ORGANIZATION}
    RECEIVE RECEIPT BY SHIPMENT 
    Location Should Contain    ${DONOR URL}
    Wait Until Page Contains   ${ERROR MESSAGE INVALID PHONE}

TC017 : Donate No Success Invalid Telephone Number
    Input Donor Success    ${GENDER}    ${TITLE NAME}    ${FULL NAME}    ${ORGANIZATION NAME}    ${INVALID TELEPHONE NUMBER EXCEED}    ${EMAIL}    ${DONATION DAY}    ${DONATION CHANNEL}    ${DONATION AMOUNT}    ${PICTURE OF DONATION}    ${LOGO OF ORGANIZATION}
    RECEIVE RECEIPT BY SHIPMENT 
    Location Should Contain    ${DONOR URL}
    Wait Until Page Contains   ${ERROR MESSAGE INVALID PHONE}

TC017 : Donate No Success Empty Telephone Number
    Input Donor Success    ${GENDER}    ${TITLE NAME}    ${FULL NAME}    ${ORGANIZATION NAME}    ${INVALID TELEPHONE NUMBER NOT ORDER DASH}    ${EMAIL}    ${DONATION DAY}    ${DONATION CHANNEL}    ${DONATION AMOUNT}    ${PICTURE OF DONATION}    ${LOGO OF ORGANIZATION}
    RECEIVE RECEIPT BY SHIPMENT 
    Location Should Contain    ${DONOR URL}
    Wait Until Page Contains   ${ERROR MESSAGE INVALID PHONE}

TC018 : Donate No Success Invalid Telephone Number
    Input Donor Success    ${GENDER}    ${TITLE NAME}    ${FULL NAME}    ${ORGANIZATION NAME}    ${INVALID TELEPHONE NUMBER NOT NUMBER}    ${EMAIL}    ${DONATION DAY}    ${DONATION CHANNEL}    ${DONATION AMOUNT}    ${PICTURE OF DONATION}    ${LOGO OF ORGANIZATION}
    RECEIVE RECEIPT BY SHIPMENT 
    Location Should Contain    ${DONOR URL}
    Wait Until Page Contains   ${ERROR MESSAGE INVALID PHONE}
    [Teardown]  Close Browser