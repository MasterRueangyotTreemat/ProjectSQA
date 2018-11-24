*** Settings ***
Resource    UAT004_resources.robot


*** Test Cases ***
TC001 : Open Event Registration Page
  Open Event Registration Page
  

TC002 : Open Register Sports and Athletics Competition Page 
    Click Element    //*[@id="side-main-menu"]/li[2]/a
    Click Element    //*[@id="pages-nav-list0"]/li[2]/a
    Click Element    //*[@id="Username"]
    Input Text    Username    porinut 
    Click Element    //*[@id="Password"]
    Input Text    Password    12345678
    Click Button    login
    Click Element    //*[@id="side-main-menu"]/li[2]/a
    Click Element    //*[@id="pages-nav-list0"]/li[2]/a
    Wait Until Page Contains    ลงทะเบียนแข่งขันกีฬาและกิจกรรม 

TC003 : Check Register Sports and Athletics Competition No Success 1: Empty All But Enter:
    Click Button    add
    Wait Until Page Contains    ${Empty All But Enter}

TC004 : Check Register Sports and Athletics Competition No Success 2: Choose Sport Role Only But Enter 1:
    Click Element    //*[@id="inputREAL"]
    Select From List By Value    //*[@id="inputREAL"]    ${ON GROUND PLAYER}
    Click Button    add
    Wait Until Page Contains    ${Empty All But Enter}

TC005 : Check Register Sports and Athletics Competition No Success 3: Choose Sport Role Only But Enter 2:
    Click Element    //*[@id="inputREAL"]
    #Select From List By Value    //*[@id="inputREAL"]    ${ON GROUND PLAYER}
    #Select From List By Value    //*[@id="inputREAL"]    ${ALTERNATE}
    Select From List By Value    //*[@id="inputREAL"]    ${ALTERNATE}
    Click Button    add
    Wait Until Page Contains    ${Empty All But Enter}

TC006 : Check Register Sports and Athletics Competition No Success 4: Choose Sport Match Type Male Only But Enter 1: 
    #Click Element    //*[@id="inputREAL"]
    #Select From List By Value    //*[@id="inputREAL"]    ${ALTERNATE}
    Click Element    //*[@id="ShowGender"]/label[2]
    Click Button    add
    Wait Until Page Contains    ${Empty All But Enter}

TC007 : Check Register Sports and Athletics Competition No Success 5: Choose Sport Match Type Male And Role But Enter 2: 
    Click Element    //*[@id="ShowGender"]/label[2]
    Click Element    //*[@id="inputREAL"]
    Select From List By Value    //*[@id="inputREAL"]    ${ON GROUND PLAYER}
    #Select From List By Value    //*[@id="inputREAL"]    ${ALTERNATE}
    Click Button    add
    Wait Until Page Contains    ${Empty All But Enter}

TC008 : Check Register Sports and Athletics Competition No Success 6: Choose Sport Match Type Male And Role But Enter 3: 
    Click Element    //*[@id="ShowGender"]/label[2]
    Click Element    //*[@id="inputREAL"]
    #Select From List By Value    //*[@id="inputREAL"]    ${ON GROUND PLAYER}
    Select From List By Value    //*[@id="inputREAL"]    ${ALTERNATE}
    Click Button    add
    Wait Until Page Contains    ${Empty All But Enter}






    