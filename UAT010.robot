*** Settings ***
Resource          UAT010_resources.robot

*** Test Cases ***
TC001 : Open Event Donor Page
    Open Donor Page
    Location Should Be    ${DONOR URL}
    
TC002 : Donate No Success Empty Gender
    Click Element    //*[@id="side-main-menu"]/li[6]/a
    Click Element    //*[@id="pages-nav-list3"]/li[2]/a
    Click Element    //*[@id="prename"]
    Wait Until Element Is Visible    //*[@id="prename"]    4s
    Input Text    inputfullname    ${FULL NAME}
    Input Text    inputORG    ${ORGANIZATION NAME}
    Input Text    tell    ${TELEPHONE NUMBER}
    Input Text    E-mail    ${EMAIL}
    Press Key    //*[@id="inputDDay"]    ${DONATION DAY}
    Input Text   //*[@id="inputDCha"]    ${DONATION CHANNEL}
    Input Text   //*[@id="inputDAm"]    ${DONATION AMOUNT}    
    Choose File    //*[@id="inputImgD"]    ${PICTURE OF DONATION}
    Choose File    //*[@id="inputImgL"]    ${LOGO OF ORGANIZATION}    
    Click Element   //*[@id="ShowReceipt"]/div/div[1]/label 
    Click Element    xpath=(//button[@type='submit'])[2]
    Location Should Contain    ${DONOR URL}
    Wait Until Page Contains   ${ERROR MESSAGE EMPTY GENDER}

TC003 : Donate No Success Empty Title Name
    Click Element    //*[@id="side-main-menu"]/li[6]/a
    Click Element    //*[@id="pages-nav-list3"]/li[2]/a
    Click Element    //*[@id="prename"]
    Wait Until Element Is Visible    //*[@id="prename"]    4s
    Input Text    inputfullname    ${FULL NAME}
    Input Text    inputORG    ${ORGANIZATION NAME}
    Input Text    tell    ${TELEPHONE NUMBER}
    Input Text    E-mail    ${EMAIL}
    Press Key    //*[@id="inputDDay"]    ${DONATION DAY}
    Input Text   //*[@id="inputDCha"]    ${DONATION CHANNEL}
    Input Text   //*[@id="inputDAm"]    ${DONATION AMOUNT}    
    Choose File    //*[@id="inputImgD"]    ${PICTURE OF DONATION}
    Choose File    //*[@id="inputImgL"]    ${LOGO OF ORGANIZATION} 
    Click Element   //*[@id="ShowReceipt"]/div/div[1]/label 
    Click Element    xpath=(//button[@type='submit'])[2]
    Location Should Contain    ${DONOR URL}
    Wait Until Page Contains     ${ERROR MESSAGE EMPTY TITLE NAME}

TC004 : Donate No Success Empty Full Name
    Input Donor Success    ${GENDER}    ${TITLE NAME}    ${EMPTY}    ${ORGANIZATION NAME}    ${TELEPHONE NUMBER}    ${EMAIL}    ${DONATION DAY}    ${DONATION CHANNEL}    ${DONATION AMOUNT}    ${PICTURE OF DONATION}    ${LOGO OF ORGANIZATION}
    Click Element   //*[@id="ShowReceipt"]/div/div[1]/label 
    Click Element    xpath=(//button[@type='submit'])[2]
    Location Should Contain    ${DONOR URL}
    Wait Until Page Contains    ${ERROR MESSAGE EMPTY FULL NAME}

TC005 : Donate No Success Empty Last Name
    Input Donor Success    ${GENDER}    ${TITLE NAME}    ${NO LASTNAME}    ${ORGANIZATION NAME}    ${TELEPHONE NUMBER}    ${EMAIL}    ${DONATION DAY}    ${DONATION CHANNEL}    ${DONATION AMOUNT}    ${PICTURE OF DONATION}    ${LOGO OF ORGANIZATION}
    Click Element   //*[@id="ShowReceipt"]/div/div[1]/label 
    Click Element    xpath=(//button[@type='submit'])[2]
    Location Should Contain    ${DONOR URL}
    Wait Until Page Contains    ${ERROR MESSAGE NO LASTNAME}

TC006 : Donate No Success Empty Organization
    Input Donor Success    ${GENDER}    ${TITLE NAME}    ${FULL NAME}    ${EMPTY}    ${TELEPHONE NUMBER}    ${EMAIL}    ${DONATION DAY}    ${DONATION CHANNEL}    ${DONATION AMOUNT}    ${PICTURE OF DONATION}    ${LOGO OF ORGANIZATION}
    Click Element   //*[@id="ShowReceipt"]/div/div[1]/label 
    Click Element    xpath=(//button[@type='submit'])[2]
    Location Should Contain    ${DONOR URL}
    Wait Until Page Contains   ${ERROR MESSAGE EMPTY ORGANIZATION NAME}  

TC007 : Donate No Success Empty Telephone Number
    Input Donor Success    ${GENDER}    ${TITLE NAME}    ${FULL NAME}    ${ORGANIZATION NAME}    ${EMPTY}    ${EMAIL}    ${DONATION DAY}    ${DONATION CHANNEL}    ${DONATION AMOUNT}    ${PICTURE OF DONATION}    ${LOGO OF ORGANIZATION}
    Click Element   //*[@id="ShowReceipt"]/div/div[1]/label 
    Click Element    xpath=(//button[@type='submit'])[2]
    Location Should Contain    ${DONOR URL}
    Wait Until Page Contains   ${ERROR MESSAGE EMPTY TELEPHONE NUMBER}

TC008 : Donate No Success Empty E-mail
    Input Donor Success    ${GENDER}    ${TITLE NAME}    ${FULL NAME}    ${ORGANIZATION NAME}    ${TELEPHONE NUMBER}    ${EMPTY}    ${DONATION DAY}    ${DONATION CHANNEL}    ${DONATION AMOUNT}    ${PICTURE OF DONATION}    ${LOGO OF ORGANIZATION}
    Click Element   //*[@id="ShowReceipt"]/div/div[1]/label 
    Click Element    xpath=(//button[@type='submit'])[2]
    Location Should Contain    ${DONOR URL}
    Wait Until Page Contains   ${ERROR MESSAGE EMPTY EMAIL} 


TC009 : Donate No Success Empty Donation Day
    Input Donor Success     ${GENDER}    ${TITLE NAME}    ${FULL NAME}    ${ORGANIZATION NAME}    ${TELEPHONE NUMBER}    ${EMAIL}    ${EMPTY}    ${DONATION CHANNEL}    ${DONATION AMOUNT}    ${PICTURE OF DONATION}    ${LOGO OF ORGANIZATION}
    Click Element   //*[@id="ShowReceipt"]/div/div[1]/label 
    Click Element    xpath=(//button[@type='submit'])[2]
    Location Should Contain    ${DONOR URL}
    Wait Until Page Contains     ${ERROR MESSAGE EMPTY DONATION DAY} 

TC010 : Donate No Success Empty Donation Channel
    Input Donor Success     ${GENDER}    ${TITLE NAME}    ${FULL NAME}    ${ORGANIZATION NAME}    ${TELEPHONE NUMBER}    ${EMAIL}    ${DONATION DAY}    ${EMPTY}    ${DONATION AMOUNT}    ${PICTURE OF DONATION}    ${LOGO OF ORGANIZATION}
    Click Element   //*[@id="ShowReceipt"]/div/div[1]/label 
    Click Element    xpath=(//button[@type='submit'])[2]
    Location Should Contain    ${DONOR URL}
    Wait Until Page Contains    ${ERROR MESSAGE DONATION CHANNEL}

TC011 : Donate No Success Empty Donation Amount
    Input Donor Success     ${GENDER}    ${TITLE NAME}    ${FULL NAME}    ${ORGANIZATION NAME}    ${TELEPHONE NUMBER}    ${EMAIL}    ${DONATION DAY}    ${DONATION CHANNEL}   ${EMPTY}    ${PICTURE OF DONATION}    ${LOGO OF ORGANIZATION}
    Click Element   //*[@id="ShowReceipt"]/div/div[1]/label 
    Click Element    xpath=(//button[@type='submit'])[2]
    Location Should Contain    ${DONOR URL}
    Wait Until Page Contains    ${ERROR MESSAGE DONATION AMOUNT} 
    Wait Until Page Contains    ${ERROR MESSAGE DONATION AMOUNT HAVE TO MORE THAN ZERO} 

TC012 : Donate No Success Empty Picture of Donation
    Click Element    //*[@id="side-main-menu"]/li[6]/a
    Click Element    //*[@id="pages-nav-list3"]/li[2]/a
    Click Element    //*[@id="ShowGender"]/div[1]/label
    Click Element    //*[@id="prename"]
    Select From List By Value    //*[@id="prename"]    ${TITLE NAME}
    Wait Until Element Is Visible    //*[@id="prename"]    4s
    Input Text    inputfullname    ${FULL NAME}
    Input Text    inputORG    ${ORGANIZATION NAME}
    Input Text    tell    ${TELEPHONE NUMBER}
    Input Text    E-mail    ${EMAIL}
    Press Key    //*[@id="inputDDay"]    ${DONATION DAY}
    Input Text   //*[@id="inputDCha"]    ${DONATION CHANNEL}
    Input Text   //*[@id="inputDAm"]    ${DONATION AMOUNT}        
    Click Element   //*[@id="ShowReceipt"]/div/div[1]/label 
    Click Element    xpath=(//button[@type='submit'])[2]
    Location Should Contain    ${DONOR URL}
    Wait Until Page Contains    ${ERROR MESSAGE EMPTY PICTURE OF DONATION} 

TC013 : Donate No Success Empty Receive Receipt By On-Carrier
    Input Donor Success    ${GENDER}    ${TITLE NAME}    ${FULL NAME}    ${ORGANIZATION NAME}    ${TELEPHONE NUMBER}    ${EMAIL}    ${DONATION DAY}    ${DONATION CHANNEL}    ${DONATION AMOUNT}    ${PICTURE OF DONATION}    ${LOGO OF ORGANIZATION}
    Location Should Contain    ${DONOR URL}
    Wait Until Page Contains   ${ERROR MESSAGE EMPTY RECEIVE RECEIPT BY ON-CARRIER} 


TC014 : Donate No Success Empty Receive Receipt By On-Carrier No Address
    Input Donor Success    ${GENDER}    ${TITLE NAME}    ${FULL NAME}    ${ORGANIZATION NAME}    ${TELEPHONE NUMBER}    ${EMAIL}    ${DONATION DAY}    ${DONATION CHANNEL}    ${DONATION AMOUNT}    ${PICTURE OF DONATION}    ${LOGO OF ORGANIZATION}
    Click Element   //*[@id="ShowReceipt"]/div/div[2]/label
    Click Element    xpath=(//button[@type='submit'])[2]
    Location Should Contain    ${DONOR URL}
    Wait Until Page Contains   ${ERROR MESSAGE EMPTY RECEIVE RECEIPT BY ON-CARRIER NO ADDRESS} 

TC015 : Donate No Success Donate No Success Invalid Telephone Number
    Input Donor Success    ${GENDER}    ${TITLE NAME}    ${FULL NAME}    ${ORGANIZATION NAME}    ${INVALID TELEPHONE NUMBER NOT EXCEED}    ${EMAIL}    ${DONATION DAY}    ${DONATION CHANNEL}    ${DONATION AMOUNT}    ${PICTURE OF DONATION}    ${LOGO OF ORGANIZATION}
    Click Element   //*[@id="ShowReceipt"]/div/div[1]/label 
    Click Element    xpath=(//button[@type='submit'])[2]
    Location Should Contain    ${DONOR URL}
    Wait Until Page Contains    ${ERROR MESSAGE INVALID PHONE}

TC016 : Donate No Success Invalid Telephone Number
    Input Donor Success    ${GENDER}    ${TITLE NAME}    ${FULL NAME}    ${ORGANIZATION NAME}    ${INVALID TELEPHONE NUMBER EXCEED}    ${EMAIL}    ${DONATION DAY}    ${DONATION CHANNEL}    ${DONATION AMOUNT}    ${PICTURE OF DONATION}    ${LOGO OF ORGANIZATION}
    Click Element   //*[@id="ShowReceipt"]/div/div[1]/label 
    Click Element    xpath=(//button[@type='submit'])[2]
    Location Should Contain    ${DONOR URL}
    Wait Until Page Contains   ${ERROR MESSAGE INVALID PHONE}

TC017 : Donate No Success Invalid Telephone Number
    Input Donor Success    ${GENDER}    ${TITLE NAME}    ${FULL NAME}    ${ORGANIZATION NAME}    ${INVALID TELEPHONE NUMBER NOT ORDER DASH}    ${EMAIL}    ${DONATION DAY}    ${DONATION CHANNEL}    ${DONATION AMOUNT}    ${PICTURE OF DONATION}    ${LOGO OF ORGANIZATION}
    Click Element   //*[@id="ShowReceipt"]/div/div[1]/label 
    Click Element    xpath=(//button[@type='submit'])[2]
    Location Should Contain    ${DONOR URL}
    Wait Until Page Contains   ${ERROR MESSAGE INVALID PHONE}

TC018 : Donate No Success Invalid Telephone Number
    Input Donor Success    ${GENDER}    ${TITLE NAME}    ${FULL NAME}    ${ORGANIZATION NAME}    ${INVALID TELEPHONE NUMBER NOT NUMBER}    ${EMAIL}    ${DONATION DAY}    ${DONATION CHANNEL}    ${DONATION AMOUNT}    ${PICTURE OF DONATION}    ${LOGO OF ORGANIZATION}
    Click Element   //*[@id="ShowReceipt"]/div/div[1]/label 
    Click Element    xpath=(//button[@type='submit'])[2] 
    Location Should Contain    ${DONOR URL}
    Wait Until Page Contains   ${ERROR MESSAGE INVALID PHONE}
    [Teardown]  Close Browser