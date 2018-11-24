*** Settings ***
Resource          UAT002_resources.robot

*** Test Cases ***
Open Event Registration Page
    Open Event Registration Page
    
TC002 : Register No Success With Id Card Empty Gender
    Input Register No Success With Id Card   ${EMPTY}    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${ID CARD}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD} 
    Location Should Contain    ${REGISTER URL}

TC003 : Register No Success With Id Card Empty Title Name
    Input Register No Success With Id Card   ${GENDER}    ${EMPTY}    ${FULL NAME}     ${BIRTHDAY}     ${ID CARD}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD} 
    Location Should Contain    ${REGISTER URL}

TC004 : Register No Success With Id Card Empty Full Name
    Input Register No Success With Id Card   ${GENDER}    ${TITLE NAME}    ${EMPTY}     ${BIRTHDAY}     ${ID CARD}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD} 
    Location Should Contain    ${REGISTER URL}

TC005 : Register No Success With Id Card Empty ID card
    Input Register No Success With Id Card   ${GENDER}    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${EMPTY}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD} 
    Location Should Contain    ${REGISTER URL}

TC006 : Register No Success With Id Card Empty Telephone Number
    Input Register No Success With Id Card   ${GENDER}    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${ID CARD}     ${STUDENT ID}     ${EMPTY}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD} 
    Location Should Contain    ${REGISTER URL}

TC007 : Register No Success With Id Card Empty Profile Image
    Input Register No Success With Id Card   ${GENDER}    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${ID CARD}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${EMPTY}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD} 
    Location Should Contain    ${REGISTER URL}

TC008 : Register No Success With Id Card Empty type of attendees
    Input Register No Success With Id Card   ${GENDER}    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${ID CARD}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${EMPTY}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD} 
    Location Should Contain    ${REGISTER URL}

TC009 : Register No Success With Id Card Empty University
    Input Register No Success With Id Card   ${GENDER}    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${ID CARD}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${EMPTY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD} 
    Location Should Contain    ${REGISTER URL}

TC010 : Register No Success With Id Card Empty E-mail
    Input Register No Success With Id Card   ${GENDER}    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${ID CARD}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMPTY}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD} 
    Location Should Contain    ${REGISTER URL}

TC011 : Register No Success With Id Card Empty Username
    Input Register No Success With Id Card   ${GENDER}    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${ID CARD}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${EMPTY}     ${PASSWORD}     ${REPEAT PASSWORD} 
    Location Should Contain    ${REGISTER URL}

TC012 : Register No Success With Id Card Empty Password
    Input Register No Success With Id Card   ${GENDER}    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${ID CARD}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${EMPTY}     ${REPEAT PASSWORD} 
    Location Should Contain    ${REGISTER URL}

TC013 : Register No Success With Id Card Empty Repeat Password
    Input Register No Success With Id Card   ${GENDER}    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${ID CARD}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${EMPTY} 
    Location Should Contain    ${REGISTER URL}

TC014 : Register No Success With Id Card Empty Last Name
    Input Register No Success With Id Card   ${GENDER}    ${TITLE NAME}    ${NO LASTNAME}     ${BIRTHDAY}     ${ID CARD}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD} 
    Location Should Contain    ${REGISTER URL}

TC015 : Register No Success With Id Card Invalid Birthday
    Input Register No Success With Id Card   ${GENDER}    ${TITLE NAME}    ${FULL NAME}     ${INVALID BIRTHDAY}     ${ID CARD}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD} 
    Location Should Contain    ${REGISTER URL}

TC016 : Register No Success With Id Card Invalid Password
    Input Register No Success With Id Card   ${GENDER}    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${ID CARD}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${INVALID PASSWORD}     ${REPEAT PASSWORD} 
    Location Should Contain    ${REGISTER URL}

TC017 : Register No Success With Id Card Invalid Phone
    Input Register No Success With Id Card   ${GENDER}    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${ID CARD}     ${STUDENT ID}     ${INVALID TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD} 
    Location Should Contain    ${REGISTER URL}

TC018 : Register No Success With Passport Empty Gender
    Input Register No Success With Passport   ${EMPTY}    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${PASSPORT}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD} 
    Location Should Contain    ${REGISTER URL}

TC019 : Register No Success With Passport Empty Title Name
    Input Register No Success With Passport   ${GENDER}    ${EMPTY}    ${FULL NAME}     ${BIRTHDAY}     ${PASSPORT}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD} 
    Location Should Contain    ${REGISTER URL}

TC020 : Register No Success With Passport Empty Full Name
    Input Register No Success With Passport   ${GENDER}    ${TITLE NAME}    ${EMPTY}     ${BIRTHDAY}     ${PASSPORT}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD} 
    Location Should Contain    ${REGISTER URL}

TC021 : Register No Success With Passport Empty Passport
    Input Register No Success With Passport   ${GENDER}    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${EMPTY}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD} 
    Location Should Contain    ${REGISTER URL}

TC022 : Register No Success With Passport Empty Telephone Number
    Input Register No Success With Passport   ${GENDER}    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${PASSPORT}     ${STUDENT ID}     ${EMPTY}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD} 
    Location Should Contain    ${REGISTER URL}

TC023 : Register No Success With Passport Empty Profile Image
    Input Register No Success With Passport   ${GENDER}    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${PASSPORT}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${EMPTY}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD} 
    Location Should Contain    ${REGISTER URL}

TC024 : Register No Success With Passport Empty type of attendees
    Input Register No Success With Passport   ${GENDER}    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${PASSPORT}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${EMPTY}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD} 
    Location Should Contain    ${REGISTER URL}

TC025 : Register No Success With Passport Empty University
    Input Register No Success With Passport   ${GENDER}    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${PASSPORT}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${EMPTY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD} 
    Location Should Contain    ${REGISTER URL}

TC026 : Register No Success With Passport Empty E-mail
    Input Register No Success With Passport   ${GENDER}    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${PASSPORT}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMPTY}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD} 
    Location Should Contain    ${REGISTER URL}

TC027 : Register No Success With Passport Empty Username
    Input Register No Success With Passport   ${GENDER}    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${PASSPORT}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${EMPTY}     ${PASSWORD}     ${REPEAT PASSWORD} 
    Location Should Contain    ${REGISTER URL}

TC028 : Register No Success With Passport Empty Password
    Input Register No Success With Passport   ${GENDER}    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${PASSPORT}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${EMPTY}     ${REPEAT PASSWORD} 
    Location Should Contain    ${REGISTER URL}

TC029 : Register No Success With Passport Empty Repeat Password
    Input Register No Success With Passport   ${GENDER}    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${PASSPORT}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${EMPTY} 
    Location Should Contain    ${REGISTER URL}

TC030 : Register No Success With Passport Empty Last Name
    Input Register No Success With Passport   ${GENDER}    ${TITLE NAME}    ${NO LASTNAME}     ${BIRTHDAY}     ${PASSPORT}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD} 
    Location Should Contain    ${REGISTER URL}

TC031 : Register No Success With Passport Invalid Birthday
    Input Register No Success With Passport   ${GENDER}    ${TITLE NAME}    ${FULL NAME}     ${INVALID BIRTHDAY}     ${PASSPORT}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD} 
    Location Should Contain    ${REGISTER URL}

TC032 : Register No Success With Passport Invalid Password
    Input Register No Success With Passport   ${GENDER}    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${PASSPORT}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${INVALID PASSWORD}     ${REPEAT PASSWORD} 
    Location Should Contain    ${REGISTER URL}

TC033 : Register No Success With Passport Invalid Phone
    Input Register No Success With Passport   ${GENDER}    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${PASSPORT}     ${STUDENT ID}     ${INVALID TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD} 
    Location Should Contain    ${REGISTER URL}