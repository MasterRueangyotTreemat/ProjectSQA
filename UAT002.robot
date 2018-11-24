*** Settings ***
Resource          UAT002_resources.robot

*** Test Cases ***
TC001 : Open Home Page
    Open Home Page
    Location Should Be     ${HOME URL}

TC002 : Register No Success With Id Card Empty Gender
    Click Element    //*[@id="side-main-menu"]/li[2]/a
    Click Element    //*[@id="pages-nav-list0"]/li[1]/a
    Input Text    inputfullname    ${FULL NAME}
    Press Key    xpath=//input[@id='inputBD']    ${BIRTHDAY}
    Click Element    //*[@id="ShowIDcardNPass"]/div[1]/label
    Wait Until Element Is Visible    //*[@id="IDcard"]    4s
    Input Text    IDcard    ${ID CARD}
    Input Text    inputSTD    ${STUDENT ID}
    Input Text    tell    ${TELEPHONE NUMBER}
    Input Text    inputTelephoneP    ${PARENT PHONE NUMBER}
    Input Text    inputFacebook    ${FACEBOOK}
    Choose File    xpath=//input[@id='inputImg']    ${IMAGE}
    Select From List By Value     //*[@id="inputType"]    ${TYPE OF ATTENDEES}
    Select From List By Value     //*[@id="inputUNS"]    ${UNIVERSITY}
    Input Text    E-mail    ${EMAIL}
    Input Text    inputUsername    ${USERNAME}
    Input Text    inputPassword    ${PASSWORD}
    Input Text    inputCPassword    ${REPEAT PASSWORD}
    Click Button    ลงทะเบียน
    Location Should Contain    ${REGISTER URL}
    Wait Until Page Contains    ${ERROR MESSAGE EMPTY GENDER}

TC003 : Register No Success With Id Card Empty Title Name
    Click Element    //*[@id="side-main-menu"]/li[2]/a
    Click Element    //*[@id="pages-nav-list0"]/li[1]/a
    Click Element    ${GENDER}
    Click Element    //*[@id="prename"]
    Wait Until Element Is Visible    //*[@id="prename"]    4s
    Input Text    inputfullname    ${FULL NAME}
    Press Key    xpath=//input[@id='inputBD']    ${BIRTHDAY}
    Click Element    //*[@id="ShowIDcardNPass"]/div[1]/label
    Wait Until Element Is Visible    //*[@id="IDcard"]    4s
    Input Text    IDcard    ${ID CARD}
    Input Text    inputSTD    ${STUDENT ID}
    Input Text    tell    ${TELEPHONE NUMBER}
    Input Text    inputTelephoneP    ${PARENT PHONE NUMBER}
    Input Text    inputFacebook    ${FACEBOOK}
    Choose File    xpath=//input[@id='inputImg']    ${IMAGE}
    Select From List By Value     //*[@id="inputType"]    ${TYPE OF ATTENDEES}
    Select From List By Value     //*[@id="inputUNS"]    ${UNIVERSITY}
    Input Text    E-mail    ${EMAIL}
    Input Text    inputUsername    ${USERNAME}
    Input Text    inputPassword    ${PASSWORD}
    Input Text    inputCPassword    ${REPEAT PASSWORD}
    Click Button    ลงทะเบียน
    Location Should Contain    ${REGISTER URL}
     Wait Until Page Contains    ${ERROR MESSAGE EMPTY TITLE NAME}

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
    Click Element    //*[@id="side-main-menu"]/li[2]/a
    Click Element    //*[@id="pages-nav-list0"]/li[1]/a
    Click Element    ${GENDER}
    Click Element    //*[@id="prename"]
    Select From List By Value    //*[@id="prename"]    ${TITLE NAME}
    Wait Until Element Is Visible    //*[@id="prename"]    4s
    Input Text    inputfullname    ${FULL NAME}
    Press Key    xpath=//input[@id='inputBD']    ${BIRTHDAY}
    Click Element    //*[@id="ShowIDcardNPass"]/div[1]/label
    Wait Until Element Is Visible    //*[@id="IDcard"]    4s
    Input Text    IDcard    ${ID CARD}
    Input Text    inputSTD    ${STUDENT ID}
    Input Text    tell    ${TELEPHONE NUMBER}
    Input Text    inputTelephoneP    ${PARENT PHONE NUMBER}
    Input Text    inputFacebook    ${FACEBOOK}
    Select From List By Value     //*[@id="inputType"]    ${TYPE OF ATTENDEES}
    Select From List By Value     //*[@id="inputUNS"]    ${UNIVERSITY}
    Input Text    E-mail    ${EMAIL}
    Input Text    inputUsername    ${USERNAME}
    Input Text    inputPassword    ${PASSWORD}
    Input Text    inputCPassword    ${REPEAT PASSWORD}
    Click Button    ลงทะเบียน
    Location Should Contain    ${REGISTER URL}
    Location Should Contain    ${REGISTER URL}

TC008 : Register No Success With Id Card Empty type of attendees
    Click Element    //*[@id="side-main-menu"]/li[2]/a
    Click Element    //*[@id="pages-nav-list0"]/li[1]/a
    Click Element    ${GENDER}
    Click Element    //*[@id="prename"]
    Select From List By Value    //*[@id="prename"]    ${TITLE NAME}
    Wait Until Element Is Visible    //*[@id="prename"]    4s
    Input Text    inputfullname    ${FULL NAME}
    Press Key    xpath=//input[@id='inputBD']    ${BIRTHDAY}
    Click Element    //*[@id="ShowIDcardNPass"]/div[1]/label
    Wait Until Element Is Visible    //*[@id="IDcard"]    4s
    Input Text    IDcard    ${ID CARD}
    Input Text    inputSTD    ${STUDENT ID}
    Input Text    tell    ${TELEPHONE NUMBER}
    Input Text    inputTelephoneP    ${PARENT PHONE NUMBER}
    Input Text    inputFacebook    ${FACEBOOK}
    Choose File    xpath=//input[@id='inputImg']    ${IMAGE}
    Select From List By Value     //*[@id="inputUNS"]    ${UNIVERSITY}
    Input Text    E-mail    ${EMAIL}
    Input Text    inputUsername    ${USERNAME}
    Input Text    inputPassword    ${PASSWORD}
    Input Text    inputCPassword    ${REPEAT PASSWORD}
    Click Button    ลงทะเบียน
    Location Should Contain    ${REGISTER URL}
    Location Should Contain    ${REGISTER URL}

TC009 : Register No Success With Id Card Empty University
    Click Element    //*[@id="side-main-menu"]/li[2]/a
    Click Element    //*[@id="pages-nav-list0"]/li[1]/a
    Click Element    ${GENDER}
    Click Element    //*[@id="prename"]
    Select From List By Value    //*[@id="prename"]    ${TITLE NAME}
    Wait Until Element Is Visible    //*[@id="prename"]    4s
    Input Text    inputfullname    ${FULL NAME}
    Press Key    xpath=//input[@id='inputBD']    ${BIRTHDAY}
    Click Element    //*[@id="ShowIDcardNPass"]/div[1]/label
    Wait Until Element Is Visible    //*[@id="IDcard"]    4s
    Input Text    IDcard    ${ID CARD}
    Input Text    inputSTD    ${STUDENT ID}
    Input Text    tell    ${TELEPHONE NUMBER}
    Input Text    inputTelephoneP    ${PARENT PHONE NUMBER}
    Input Text    inputFacebook    ${FACEBOOK}
    Choose File    xpath=//input[@id='inputImg']    ${IMAGE}
    Select From List By Value     //*[@id="inputType"]    ${TYPE OF ATTENDEES}
    Input Text    E-mail    ${EMAIL}
    Input Text    inputUsername    ${USERNAME}
    Input Text    inputPassword    ${PASSWORD}
    Input Text    inputCPassword    ${REPEAT PASSWORD}
    Click Button    ลงทะเบียน
    Location Should Contain    ${REGISTER URL}
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

TC018 : Register No Success With Id Card Invalid ID card
    Input Register No Success With Id Card   ${GENDER}    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${INVALID ID CARD}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD} 
    Location Should Contain    ${REGISTER URL}

TC019 : Register No Success With Id Card Invalid Repeat Password
    Input Register No Success With Id Card   ${GENDER}    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${ID CARD}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${INVALID REPEAT PASSWORD} 
    Location Should Contain    ${REGISTER URL}

TC020 : Register No Success With Passport Empty Gender
    Click Element    //*[@id="side-main-menu"]/li[2]/a
    Click Element    //*[@id="pages-nav-list0"]/li[1]/a
    Input Text    inputfullname    ${FULL NAME}
    Press Key    xpath=//input[@id='inputBD']    ${BIRTHDAY}
    Click Element    //*[@id="ShowIDcardNPass"]/div[3]/label
    Wait Until Element Is Visible    //*[@id="Passport"]    4s
    Input Text    Passport    ${PASSPORT}
    Input Text    inputSTD    ${STUDENT ID}
    Input Text    tell    ${TELEPHONE NUMBER}
    Input Text    inputTelephoneP    ${PARENT PHONE NUMBER}
    Input Text    inputFacebook    ${FACEBOOK}
    Choose File    xpath=//input[@id='inputImg']    ${IMAGE}
    Select From List By Value     //*[@id="inputType"]    ${TYPE OF ATTENDEES}
    Select From List By Value     //*[@id="inputUNS"]    ${UNIVERSITY}
    Input Text    E-mail    ${EMAIL}
    Input Text    inputUsername    ${USERNAME}
    Input Text    inputPassword    ${PASSWORD}
    Input Text    inputCPassword    ${REPEAT PASSWORD}
    Click Button    ลงทะเบียน
    Location Should Contain    ${REGISTER URL}

TC021 : Register No Success With Passport Empty Title Name
    Click Element    //*[@id="side-main-menu"]/li[2]/a
    Click Element    //*[@id="pages-nav-list0"]/li[1]/a
    Click Element    ${GENDER}
    Click Element    //*[@id="prename"]
    Wait Until Element Is Visible    //*[@id="prename"]    4s
    Input Text    inputfullname    ${FULL NAME}
    Press Key    xpath=//input[@id='inputBD']    ${BIRTHDAY}
    Click Element    //*[@id="ShowIDcardNPass"]/div[3]/label
    Wait Until Element Is Visible    //*[@id="Passport"]    4s
    Input Text    Passport    ${PASSPORT}
    Input Text    inputSTD    ${STUDENT ID}
    Input Text    tell    ${TELEPHONE NUMBER}
    Input Text    inputTelephoneP    ${PARENT PHONE NUMBER}
    Input Text    inputFacebook    ${FACEBOOK}
    Choose File    xpath=//input[@id='inputImg']    ${IMAGE}
    Select From List By Value     //*[@id="inputType"]    ${TYPE OF ATTENDEES}
    Select From List By Value     //*[@id="inputUNS"]    ${UNIVERSITY}
    Input Text    E-mail    ${EMAIL}
    Input Text    inputUsername    ${USERNAME}
    Input Text    inputPassword    ${PASSWORD}
    Input Text    inputCPassword    ${REPEAT PASSWORD}
    Click Button    ลงทะเบียน
    Location Should Contain    ${REGISTER URL}

TC022 : Register No Success With Passport Empty Full Name
    Input Register No Success With Passport   ${GENDER}    ${TITLE NAME}    ${EMPTY}     ${BIRTHDAY}     ${PASSPORT}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD} 
    Location Should Contain    ${REGISTER URL}

TC023 : Register No Success With Passport Empty Passport
    Input Register No Success With Passport   ${GENDER}    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${EMPTY}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD} 
    Location Should Contain    ${REGISTER URL}

TC024 : Register No Success With Passport Empty Telephone Number
    Input Register No Success With Passport   ${GENDER}    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${PASSPORT}     ${STUDENT ID}     ${EMPTY}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD} 
    Location Should Contain    ${REGISTER URL}

TC025 : Register No Success With Passport Empty Profile Image
    Input Register No Success With Passport   ${GENDER}    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${PASSPORT}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${EMPTY}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD} 
    Location Should Contain    ${REGISTER URL}

TC026 : Register No Success With Passport Empty type of attendees
    Click Element    //*[@id="side-main-menu"]/li[2]/a
    Click Element    //*[@id="pages-nav-list0"]/li[1]/a
    Click Element    ${GENDER}
    Click Element    //*[@id="prename"]
    Select From List By Value    //*[@id="prename"]    ${TITLE NAME}
    Wait Until Element Is Visible    //*[@id="prename"]    4s
    Input Text    inputfullname    ${FULL NAME}
    Press Key    xpath=//input[@id='inputBD']    ${BIRTHDAY}
    Click Element    //*[@id="ShowIDcardNPass"]/div[3]/label
    Wait Until Element Is Visible    //*[@id="Passport"]    4s
    Input Text    Passport    ${PASSPORT}
    Input Text    inputSTD    ${STUDENT ID}
    Input Text    tell    ${TELEPHONE NUMBER}
    Input Text    inputTelephoneP    ${PARENT PHONE NUMBER}
    Input Text    inputFacebook    ${FACEBOOK}
    Choose File    xpath=//input[@id='inputImg']    ${IMAGE}
    Select From List By Value     //*[@id="inputUNS"]    ${UNIVERSITY}
    Input Text    E-mail    ${EMAIL}
    Input Text    inputUsername    ${USERNAME}
    Input Text    inputPassword    ${PASSWORD}
    Input Text    inputCPassword    ${REPEAT PASSWORD}
    Click Button    ลงทะเบียน
    Location Should Contain    ${REGISTER URL}

TC027 : Register No Success With Passport Empty University
    Click Element    //*[@id="side-main-menu"]/li[2]/a
    Click Element    //*[@id="pages-nav-list0"]/li[1]/a
    Click Element    ${GENDER}
    Click Element    //*[@id="prename"]
    Select From List By Value    //*[@id="prename"]    ${TITLE NAME}
    Wait Until Element Is Visible    //*[@id="prename"]    4s
    Input Text    inputfullname    ${FULL NAME}
    Press Key    xpath=//input[@id='inputBD']    ${BIRTHDAY}
    Click Element    //*[@id="ShowIDcardNPass"]/div[3]/label
    Wait Until Element Is Visible    //*[@id="Passport"]    4s
    Input Text    Passport    ${PASSPORT}
    Input Text    inputSTD    ${STUDENT ID}
    Input Text    tell    ${TELEPHONE NUMBER}
    Input Text    inputTelephoneP    ${PARENT PHONE NUMBER}
    Input Text    inputFacebook    ${FACEBOOK}
    Choose File    xpath=//input[@id='inputImg']    ${IMAGE}
    Select From List By Value     //*[@id="inputType"]    ${TYPE OF ATTENDEES}
    Input Text    E-mail    ${EMAIL}
    Input Text    inputUsername    ${USERNAME}
    Input Text    inputPassword    ${PASSWORD}
    Input Text    inputCPassword    ${REPEAT PASSWORD}
    Click Button    ลงทะเบียน
    Location Should Contain    ${REGISTER URL}

TC028 : Register No Success With Passport Empty E-mail
    Input Register No Success With Passport   ${GENDER}    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${PASSPORT}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMPTY}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD} 
    Location Should Contain    ${REGISTER URL}

TC029 : Register No Success With Passport Empty Username
    Input Register No Success With Passport   ${GENDER}    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${PASSPORT}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${EMPTY}     ${PASSWORD}     ${REPEAT PASSWORD} 
    Location Should Contain    ${REGISTER URL}

TC030 : Register No Success With Passport Empty Password
    Input Register No Success With Passport   ${GENDER}    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${PASSPORT}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${EMPTY}     ${REPEAT PASSWORD} 
    Location Should Contain    ${REGISTER URL}

TC031 : Register No Success With Passport Empty Repeat Password
    Input Register No Success With Passport   ${GENDER}    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${PASSPORT}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${EMPTY} 
    Location Should Contain    ${REGISTER URL}

TC032 : Register No Success With Passport Empty Last Name
    Input Register No Success With Passport   ${GENDER}    ${TITLE NAME}    ${NO LASTNAME}     ${BIRTHDAY}     ${PASSPORT}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD} 
    Location Should Contain    ${REGISTER URL}

TC033 : Register No Success With Passport Invalid Birthday
    Input Register No Success With Passport   ${GENDER}    ${TITLE NAME}    ${FULL NAME}     ${INVALID BIRTHDAY}     ${PASSPORT}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD} 
    Location Should Contain    ${REGISTER URL}

TC034 : Register No Success With Passport Invalid Password
    Input Register No Success With Passport   ${GENDER}    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${PASSPORT}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${INVALID PASSWORD}     ${REPEAT PASSWORD} 
    Location Should Contain    ${REGISTER URL}

TC035 : Register No Success With Passport Invalid Phone
    Input Register No Success With Passport   ${GENDER}    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${PASSPORT}     ${STUDENT ID}     ${INVALID TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD} 
    Location Should Contain    ${REGISTER URL}

TC036 : Register No Success With Passport Invalid Passport
    Input Register No Success With Passport   ${GENDER}    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${INVALID PASSPORT}       ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD} 
    Location Should Contain    ${REGISTER URL}

TC037 : Register No Success With Passport Invalid Repeat Password
    Input Register No Success With Passport   ${GENDER}    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${PASSPORT}       ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${INVALID REPEAT PASSWORD} 
    Location Should Contain    ${REGISTER URL}
    [Teardown]    Close Browser

