*** Settings ***
Library     Selenium2Library

*** Variables ***
${SERVER}    localhost
${BROWSER}    Chrome
${HOME URL}    http://${SERVER}/AtomGame/public/home
${REGISTER URL}    http://${SERVER}/AtomGame/public/registerSNA
${USERNAME}    porinut
${PASSWORD}    12345678
${SHOW NAME}    ผู้เข้าใช้งาน Somnut Naja ได้เข้าสู่ระบบ
${SHOW REGISTER PAGE}    ลงทะเบียนแข่งขันกีฬาและกิจกรรม
${SHOW REGISTER SUCCSESS}    ลงทะเบียนแข่งขันสำเร็จ
<<<<<<< HEAD
${DELAY}    0.05
=======
${DELAY}    0.1
>>>>>>> e1f12589b70a133547c9431ed681b08d40f78fa8
${SPORT}    //*[@id="ShowFormat"]/label[1]
${ACTIVITIES}    //*[@id="ShowFormat"]/label[2]
${GENDER_FEMALE}    //*[@id="ShowGender"]/label[1] 
${GENDER_MALE}    //*[@id="ShowGender"]/label[2]
${GENDER_ALL}    //*[@id="ShowGender"]/label[3]
${FOOTBALL}    S2019003 
${BADMINTON}    S2019006
${ESPAK_MUZZLE}    S2019007 
${FUTSAL}    S2019013
${200M}    S2019015
<<<<<<< HEAD
${T}    T
${S}    S
=======
${AMBASSADOR}    S2019005
${RUMWOMG}    S2019017
${ON GROUND PLAYER}    T
${ALTERNATE}    S
${ADD}    เพิ่ม
${SHOW FOOTBALL TITLE}    ฟุตบอล(football)
${SHOW BADMINTON TITLE}    แบดมินตัน(badminton)
${SHOW ESPAK MUZZLE TITLE}    เซปักตะกร้อ(espak muzzle)
${SHOW FOOTSAL TITLE}    ฟุตซอล(futsal)
${SHOW 200M TITLE}    วิ่ง 200 เมตร(200 m)
${SHOW AMBASSADOR TITLE}    ประกวดดาวเดือน
${SHOW RUMWOMG TITLE}    รำวง(rumwomg)

>>>>>>> e1f12589b70a133547c9431ed681b08d40f78fa8
*** Keywords ***
Open Event Registration Page
  Open Browser    ${HOME URL}    ${BROWSER} 
  Maximize Browser Window
  Set Selenium Speed    ${DELAY}
  Location Should Be     ${HOME URL}

Input Login Success
<<<<<<< HEAD
  [Arguments]    ${username}   ${password}   
=======
  [Arguments]    ${username}   ${password}   ${SHOW NAME}
>>>>>>> e1f12589b70a133547c9431ed681b08d40f78fa8
  Click Element    //*[@id="loginBtn"]
  Click Element    //*[@id="Username"]
  Input Text    Username    ${username}
  Click Element    //*[@id="Password"]
  Input Text    Password    ${password}
  Click Button    login
  Wait Until Page Contains    ${SHOW NAME}

Input Register Sports and Athletics Competition Page
<<<<<<< HEAD
  [Arguments]    ${SHOW REGISTER PAGE}    ${REGISTER URL}    
  Click Element    //*[@id="side-main-menu"]/li[2]/a
  Click Element    //*[@id="pages-nav-list0"]/li[2]/a
  Wait Until Page Contains    ${SHOW REGISTER PAGE}
  Location Should Be    ${REGISTER URL} 
  
Input Register Sports Competition Success 1
  [Arguments]    ${REGISTER URL}    ${SPORT}    ${GENDER_MALE}    ${FOOTBALL}    ${T}    ${SHOW REGISTER SUCCSESS}
=======
  [Arguments]    ${SHOW REGISTER PAGE}
  Click Element    //*[@id="side-main-menu"]/li[2]/a
  Click Element    //*[@id="pages-nav-list0"]/li[2]/a
  
Input Register Football Success 
  [Arguments]    ${REGISTER URL}    ${SPORT}    ${GENDER_MALE}    ${FOOTBALL}    ${ON GROUND PLAYER}     ${SHOW REGISTER SUCCSESS}
>>>>>>> e1f12589b70a133547c9431ed681b08d40f78fa8
  Location Should Be    ${REGISTER URL} 
  Click Element    ${SPORT}
  Click Element    ${GENDER_MALE}
  Select From List By Value    //*[@id="inputName"]    ${FOOTBALL}
<<<<<<< HEAD
  Select From List By Value    //*[@id="inputREAL"]    ${T}
  Click Button    เพิ่ม
  Wait Until Page Contains    ${SHOW REGISTER SUCCSESS}
  Wait Until Page Contains    ฟุตบอล(football)
  Wait Until Page Contains    ชาย(male)
  Wait Until Page Contains    กีฬาและกรีฑา (sports and athletics)
  Wait Until Page Contains    ตัวจริง (on ground player)

Input Register Sports Competition Success 2
  [Arguments]
  Location Should Be    ${REGISTER URL
  }
=======
  Select From List By Value    //*[@id="inputREAL"]    ${ON GROUND PLAYER} 
  Click Button    ${ADD}

Input Register Badminton Success 
  [Arguments]    ${REGISTER URL}    ${SPORT}    ${GENDER_MALE}    ${BADMINTON}    ${ON GROUND PLAYER}     ${SHOW REGISTER SUCCSESS}
  Location Should Be    ${REGISTER URL} 
  Click Element    ${SPORT}
  Click Element    ${GENDER_MALE}
  Select From List By Value    //*[@id="inputName"]    ${BADMINTON}
  Select From List By Value    //*[@id="inputREAL"]    ${ON GROUND PLAYER} 
  Click Button    ${ADD}

Input Register Espak muzzle Success 
  [Arguments]    ${REGISTER URL}    ${SPORT}    ${GENDER_MALE}    ${ESPAK_MUZZLE}    ${ON GROUND PLAYER}     ${SHOW REGISTER SUCCSESS}
  Location Should Be    ${REGISTER URL} 
  Click Element    ${SPORT}
  Click Element    ${GENDER_MALE}
  Select From List By Value    //*[@id="inputName"]    ${ESPAK_MUZZLE}
  Select From List By Value    //*[@id="inputREAL"]    ${ON GROUND PLAYER} 
  Click Button    ${ADD}

Input Register Futsal Success
  [Arguments]    ${REGISTER URL}    ${SPORT}    ${GENDER_MALE}    ${FUTSAL}    ${ON GROUND PLAYER}     ${SHOW REGISTER SUCCSESS}
  Location Should Be    ${REGISTER URL} 
  Click Element    ${SPORT}
  Click Element    ${GENDER_MALE}
  Select From List By Value    //*[@id="inputName"]    ${FUTSAL}
  Select From List By Value    //*[@id="inputREAL"]    ${ON GROUND PLAYER} 
  Click Button    ${ADD}

Input Register 200M Success 
  [Arguments]    ${REGISTER URL}    ${SPORT}    ${GENDER_MALE}    ${200M}    ${ON GROUND PLAYER}     ${SHOW REGISTER SUCCSESS}
  Location Should Be    ${REGISTER URL} 
  Click Element    ${SPORT}
  Click Element    ${GENDER_MALE}
  Select From List By Value    //*[@id="inputName"]    ${200M}
  Select From List By Value    //*[@id="inputREAL"]    ${ON GROUND PLAYER} 
  Click Button    ${ADD}

Input Register Ambassador of science star Success 
  [Arguments]    ${REGISTER URL}    ${ACTIVITIES}    ${GENDER_ALL}    ${AMBASSADOR}    ${ON GROUND PLAYER}     ${SHOW REGISTER SUCCSESS}
  Location Should Be    ${REGISTER URL} 
  Click Element    ${ACTIVITIES} 
  Click Element    ${GENDER_ALL}
  Select From List By Value    //*[@id="inputName"]    ${AMBASSADOR}
  Select From List By Value    //*[@id="inputREAL"]    ${ON GROUND PLAYER} 
  Click Button    ${ADD} 

Input Register Rumwomg Success 
  [Arguments]    ${REGISTER URL}    ${ACTIVITIES}    ${GENDER_ALL}    ${RUMWOMG}    ${ON GROUND PLAYER}     ${SHOW REGISTER SUCCSESS}
  Location Should Be    ${REGISTER URL} 
  Click Element    ${ACTIVITIES} 
  Click Element    ${GENDER_ALL}
  Select From List By Value    //*[@id="inputName"]    ${RUMWOMG}
  Select From List By Value    //*[@id="inputREAL"]    ${ON GROUND PLAYER} 
  Click Button    ${ADD}
  
>>>>>>> e1f12589b70a133547c9431ed681b08d40f78fa8
