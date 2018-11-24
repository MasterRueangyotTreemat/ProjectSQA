*** Settings ***
Resource    UAT003_resources.robot

*** Test Cases ***
TC001 : Open Event Registration Page
  Open Event Registration Page
  
TC002 : Login Success:
  Input Login Success    ${USERNAME}   ${PASSWORD}    ${SHOW NAME}
  Wait Until Page Contains    ${SHOW NAME}  

TC003 : Input Register Sports and Athletics Competition Page :
  Input Register Sports and Athletics Competition Page    ${SHOW REGISTER PAGE}
  Wait Until Page Contains    ${SHOW REGISTER PAGE}
  Location Should Be    ${REGISTER URL}

TC004 : Input Register Football Success :
  Input Register Football Success    ${REGISTER URL}    ${SPORT}    ${GENDER_MALE}    ${FOOTBALL}    ${ON GROUND PLAYER}     ${SHOW REGISTER SUCCSESS}
  Wait Until Page Contains    ${SHOW REGISTER SUCCSESS}
  Wait Until Page Contains    ${SHOW FOOTBALL TITLE }

TC005 : Input Register Badminton Success : 
  Input Register Badminton Success    ${REGISTER URL}    ${SPORT}    ${GENDER_MALE}    ${BADMINTON}    ${ON GROUND PLAYER}     ${SHOW REGISTER SUCCSESS}
  Wait Until Page Contains    ${SHOW REGISTER SUCCSESS}
  Wait Until Page Contains    ${SHOW BADMINTON TITLE}

TC006 : Input Register Espak muzzle Success : 
  Input Register Espak muzzle Success    ${REGISTER URL}    ${SPORT}    ${GENDER_MALE}    ${ESPAK_MUZZLE}    ${ON GROUND PLAYER}     ${SHOW REGISTER SUCCSESS}
  Wait Until Page Contains    ${SHOW REGISTER SUCCSESS}
  Wait Until Page Contains    ${SHOW ESPAK MUZZLE TITLE}

TC007 : Input Register Futsal Success :
  Input Register Futsal Success    ${REGISTER URL}    ${SPORT}    ${GENDER_MALE}    ${FUTSAL}    ${ON GROUND PLAYER}     ${SHOW REGISTER SUCCSESS}
  Wait Until Page Contains    ${SHOW REGISTER SUCCSESS}
  Wait Until Page Contains    ${SHOW FOOTSAL TITLE}

TC008 : Input Register 200M Success :
  Input Register Futsal Success     ${REGISTER URL}    ${SPORT}    ${GENDER_MALE}    ${200M}    ${ON GROUND PLAYER}     ${SHOW REGISTER SUCCSESS}
  Wait Until Page Contains    ${SHOW REGISTER SUCCSESS}
  Wait Until Page Contains    ${SHOW 200M TITLE} 

TC009 : Input Register Ambassador of science star Success :
  Input Register Ambassador of science star Success    ${REGISTER URL}    ${ACTIVITIES}    ${GENDER_ALL}    ${AMBASSADOR}    ${ON GROUND PLAYER}     ${SHOW REGISTER SUCCSESS}
  Wait Until Page Contains    ${SHOW REGISTER SUCCSESS}
  Wait Until Page Contains    ${SHOW AMBASSADOR TITLE}

TC010 : Input Register Rumwomg Success :
  Input Register Rumwomg Success    ${REGISTER URL}    ${ACTIVITIES}    ${GENDER_ALL}    ${RUMWOMG}    ${ON GROUND PLAYER}     ${SHOW REGISTER SUCCSESS}
  Wait Until Page Contains    ${SHOW REGISTER SUCCSESS}
  Wait Until Page Contains    ${SHOW RUMWOMG TITLE}