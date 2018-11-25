*** Settings ***
Resource    UAT005_resources.robot

*** Test Cases ***
TC001 : Open Event Registration Page
  Open Event Registration Page
  
TC002 : Login Success:
  Input Login Success    ${USERNAME}   ${PASSWORD}

TC003 : View Profile : 
    Click Element    xpath=//a[@id='notifications']/img
    Click Element    xpath=//a/strong

TC004 : View Sport Schedule
    Click Element    //*[@id="side-main-menu"]/li[3]/a
    Click Element    //*[@id="allSchedule1"]/li/a

TC005 : View Activities Schedule :
    Click Element    //*[@id="side-main-menu"]/li[3]/a
    Click Element    //*[@id="allSchedule2"]/li/a

TC006 : View Sport Schedule Result :
    Click Element    //*[@id="side-main-menu"]/li[4]/a
    Click Element    //*[@id="allSchedule5"]/li/a

TC007 : View Activities Schedule Result :
    Click Element    //*[@id="side-main-menu"]/li[4]/a
    Click Element    //*[@id="allSchedule4"]/li/a

TC008 : View SumMedal :
    Click Element    //*[@id="side-main-menu"]/li[5]/a
    [Teardown]    Close Browser