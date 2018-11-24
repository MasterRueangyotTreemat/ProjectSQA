*** Settings ***
Library     Selenium2Library

*** Variables ***
${SERVER}    localhost
${BROWSER}    chrome
${HOME URL}    http://${SERVER}/AtomGame/public/home
${DONATE DETAIL}    http://${SERVER}/AtomGame/public/file/HE20191D.pdf

*** Test Cases ***
Donate Detail Success 
    [Tags]    MultiWindow
    Open Browser    ${HOME URL}    ${BROWSER} 
    Maximize Browser Window
    Click Element    //*[@id="side-main-menu"]/li[6]/a
    Click Element    //*[@id="pages-nav-list3"]/li[1]/a/div/div
    Select Window    Title=Untitled
    Select Window    link=Untitled
    Page Should Contain Element    ${DONATE DETAIL}
    Location Should Be     ${DONATE DETAIL}
    [Teardown]  Close Browser