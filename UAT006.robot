*** Settings ***
Resource    UAT006_resources.robot

*** Test Cases ***
TC001 : Open Event Registration Page
  Open Event Registration Page

TCOO2 : Login Fail : (Username ถูก Password ผิด)
  Click Element    //*[@id="loginBtn"]
  Click Element    //*[@id="Username"]
  Input Text    Username    porinut
  Click Element    //*[@id="Password"]
  Input Text    Password    1234
  Click Button    login
  Wait Until Page Contains    Username หรือ Password ไม่ถูกต้อง

TCOO3 : Login Fail : (Username ผิด Password ถูก)
  Click Element    //*[@id="Username"]
  Input Text    Username    abcd
  Click Element    //*[@id="Password"]
  Input Text    Password    12345678
  Click Button    login
  Wait Until Page Contains    Username หรือ Password ไม่ถูกต้อง

TC004 : Login Fail : (Username ผิด Password ผิด)
  Click Element    //*[@id="Username"]
  Input Text    Username    abcd
  Click Element    //*[@id="Password"]
  Input Text    Password    1234
  Click Button    login
  Wait Until Page Contains    Username หรือ Password ไม่ถูกต้อง

TC005 : Login Fail : ( Empty Password )
  Click Element    //*[@id="Username"]
  Input Text    Username    porinut
  Click Button    login
  Wait Until Page Contains    กรุณากรอก Password

TC006 : Login Fail : ( Empty Username )
  Click Element    //*[@id="Password"]
  Input Text    Password    12345678
  Click Button    login
  Wait Until Page Contains    กรุณากรอก Username

TC007 : Login Fail : ( Empty Username And Password )
  Click Button    login
  Wait Until Page Contains    กรุณากรอก Username