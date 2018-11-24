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
    Wait Until Page Contains    ${ERROR PLEASE SELECT SPORTS}

TC004 : Check Register Sports and Athletics Competition No Success 2: Choose Sport Role Only But Enter 1:
    Click Element    //*[@id="inputREAL"]
    Select From List By Value    //*[@id="inputREAL"]    ${ON GROUND PLAYER}
    Click Button    add
    Wait Until Page Contains    ${ERROR PLEASE SELECT SPORTS}

TC005 : Check Register Sports and Athletics Competition No Success 3: Choose Sport Role Only But Enter 2:
    Click Element    //*[@id="inputREAL"]
    #Select From List By Value    //*[@id="inputREAL"]    ${ON GROUND PLAYER}
    #Select From List By Value    //*[@id="inputREAL"]    ${ALTERNATE}
    Select From List By Value    //*[@id="inputREAL"]    ${ALTERNATE}
    Click Button    add
    Wait Until Page Contains    ${ERROR PLEASE SELECT SPORTS}

TC006 : Check Register Sports and Athletics Competition No Success 4: Choose Sport Match Type Male Only But Enter 1: 
    #Click Element    //*[@id="inputREAL"]
    #Select From List By Value    //*[@id="inputREAL"]    ${ALTERNATE}
    Click Element    //*[@id="ShowGender"]/label[2]
    Click Button    add
    Wait Until Page Contains    ${ERROR PLEASE SELECT SPORTS}

TC007 : Check Register Sports and Athletics Competition No Success 5: Choose Sport Match Type Male And Role But Enter 2: 
    Click Element    //*[@id="ShowGender"]/label[2]
    Click Element    //*[@id="inputREAL"]
    Select From List By Value    //*[@id="inputREAL"]    ${ON GROUND PLAYER}
    #Select From List By Value    //*[@id="inputREAL"]    ${ALTERNATE}
    Click Button    add
    Wait Until Page Contains    ${ERROR PLEASE SELECT SPORTS}

TC008 : Check Register Sports and Athletics Competition No Success 6: Choose Sport Match Type Male And Role But Enter 3: 
    Click Element    //*[@id="ShowGender"]/label[2]
    Click Element    //*[@id="inputREAL"]
    #Select From List By Value    //*[@id="inputREAL"]    ${ON GROUND PLAYER}
    Select From List By Value    //*[@id="inputREAL"]    ${ALTERNATE}
    Click Button    add
    Wait Until Page Contains    ${ERROR PLEASE SELECT SPORTS}

TC009 : Check Register Sports and Athletics Competition No Success 7: Choose Sport Match Type All Only But Enter 1:
    Click Element    //*[@id="ShowGender"]/label[3]
    #Click Element    //*[@id="inputREAL"]
    #Select From List By Value    //*[@id="inputREAL"]    ${ON GROUND PLAYER}
    #Select From List By Value    //*[@id="inputREAL"]    ${ALTERNATE}
    Click Button    add
    Wait Until Page Contains    ${ERROR PLEASE SELECT SPORTS}

TC010 : Check Register Sports and Athletics Competition No Success 8: Choose Sport Match Type All And Role But Enter 2:
    Click Element    //*[@id="ShowGender"]/label[3]
    Click Element    //*[@id="inputREAL"]
    Select From List By Value    //*[@id="inputREAL"]    ${ON GROUND PLAYER}
    #Select From List By Value    //*[@id="inputREAL"]    ${ALTERNATE}
    Click Button    add
    Wait Until Page Contains    ${ERROR PLEASE SELECT SPORTS}

TC011 : Check Register Sports and Athletics Competition No Success 9: Choose Sport Match Type All And Role But Enter 3:
    Click Element    //*[@id="ShowGender"]/label[3]
    Click Element    //*[@id="inputREAL"]
    #Select From List By Value    //*[@id="inputREAL"]    ${ON GROUND PLAYER}
    Select From List By Value    //*[@id="inputREAL"]    ${ALTERNATE}
    Click Button    add
    Wait Until Page Contains    ${ERROR PLEASE SELECT SPORTS}

TC012 : Check Register Sports and Athletics Competition No Success 10: Choose Sport Match Format Sports And Athletics And Match Type Male But Enter 1:
    Click Element    //*[@id="ShowFormat"]/label[1]
    Click Element    //*[@id="ShowGender"]/label[2]
    #Click Element    //*[@id="ShowGender"]/label[3]
    #Click Element    //*[@id="inputREAL"]
    #Select From List By Value    //*[@id="inputREAL"]    ${ON GROUND PLAYER}
    #Select From List By Value    //*[@id="inputREAL"]    ${ALTERNATE}
    Click Button    add
    Wait Until Page Contains    ${ERROR PLEASE SELECT A COMPETITION}

TC013 : Check Register Sports and Athletics Competition No Success 11: Choose Sport Match Format Sports And Athletics And Match Type Male But Enter 2:
    Click Element    //*[@id="ShowFormat"]/label[1]
    Click Element    //*[@id="ShowGender"]/label[2]
    #Click Element    //*[@id="ShowGender"]/label[3]
    Click Element    //*[@id="inputREAL"]
    Select From List By Value    //*[@id="inputREAL"]    ${ON GROUND PLAYER}
    #Select From List By Value    //*[@id="inputREAL"]    ${ALTERNATE}
    Click Button    add
    Wait Until Page Contains    ${ERROR PLEASE SELECT A COMPETITION}

TC014 : Check Register Sports and Athletics Competition No Success 12: Choose Sport Match Format Sports And Athletics And Match Type Male And Role But Enter 3:
    Click Element    //*[@id="ShowFormat"]/label[1]
    Click Element    //*[@id="ShowGender"]/label[2]
    #Click Element    //*[@id="ShowGender"]/label[3]
    Click Element    //*[@id="inputREAL"]
    #Select From List By Value    //*[@id="inputREAL"]    ${ON GROUND PLAYER}
    Select From List By Value    //*[@id="inputREAL"]    ${ALTERNATE}
    Click Button    add
    Wait Until Page Contains    ${ERROR PLEASE SELECT A COMPETITION}

TC015 : Check Register Sports and Athletics Competition No Success 13: Choose Sport Match Format Sports And Athletics And Match Type All But Enter 1:
    Click Element    //*[@id="ShowFormat"]/label[1]
    #Click Element    //*[@id="ShowGender"]/label[2]
    Click Element    //*[@id="ShowGender"]/label[3]
    #Click Element    //*[@id="inputREAL"]
    #Select From List By Value    //*[@id="inputREAL"]    ${ON GROUND PLAYER}
    #Select From List By Value    //*[@id="inputREAL"]    ${ALTERNATE}
    Click Button    add
    Wait Until Page Contains    ${ERROR PLEASE SELECT A COMPETITION}




    