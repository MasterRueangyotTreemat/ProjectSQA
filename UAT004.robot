*** Settings ***
Resource    UAT001_resources.robot


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

TC003 : Check Register Sports and Athletics Competition No 
Empty All But Enter :
    Click Element    //*[@id="ShowFormat"]/label[1]   ${Empty}
    Click Element    
    Wait Until Page Contains    ${ERROR MESSAGE}


    