322 385 Software Quality Assurance [1/2561]
01-02

PORNTHEP NETDECHA
ตัวกรอง
มอบหมายแล้ว
ส่งคืนพร้อมคะแนน
เลยกำหนด
ชื่อ
ครบกำหนด
[Sec#2] Lab#10 - Integration Testing
16 พ.ย. 23:59
เลยกำหนด
[Sec#01] Lab#10 - Integration Testing
1
เอกสารแนบการส่งงาน 1 รายการ
13 พ.ย. 23:59
ส่งแล้ว
[Sec 02] Lab#7 - Decision Table
19 ต.ค. 23:59
เลยกำหนด
[Sec 01] ส่งงาน Lab#7 - Decision Table
2
]เอกสารแนบการส่งงาน 2 รายการ
17 ต.ค. 23:59
ส่งแล้ว
[Sec 02] ส่งงาน Lab#6 - EC
19 ต.ค. 11:59
เลยกำหนด
[Sec 01] ส่งงาน Lab#6 - EC
1
เอกสารแนบการส่งงาน 1 รายการ
17 ต.ค. 11:59
ส่งแล้ว
[Sec02] Lab UAT
27 ก.ย. 23:59
เลยกำหนด
[Sec 01] UAT
1
ความคิดเห็นส่วนตัว 1 รายการ
1
เอกสารแนบการส่งงาน 1 รายการ
25 ก.ย. 00:00
ส่งแล้ว

Lab4_593020930-8.txt
Text
ความคิดเห็นส่วนตัว

PORNTHEP NETDECHA24 ก.ย.
ส่งช้าเนื่องจากกระผมไปแข่งทักษะ start up ที่อิมแพค ชาเลนเจอร์ เมืองทองธานี ส่วนใบลาจะนำส่งภายในคาบเรียนครับ
[Project#1] Test Design
15 ต.ค. 13:00
เลยกำหนด
[Section 02] Lab#3 Capture and Replay
31 ส.ค.
เลยกำหนด
[Section 01] Lab#3 Capture and Replay
1
เอกสารแนบการส่งงาน 1 รายการ
29 ส.ค.
ส่งแล้ว
[Sec 02] Lab#2 Designing Effective Test Case
29 ส.ค. 23:59
เลยกำหนด
[Section 01] Lab#2 Designing Effective Test Case
1
เอกสารแนบการส่งงาน 1 รายการ
27 ส.ค. 23:59
ส่งแล้ว

*** Settings ***
Library    Selenium2Library

*** Variables ***
${SERVER}    localhost:7272
${BROWSER}    Chrome
${WELCOME URL}    http://localhost:7272/Lab4/Registration.html

*** Testcases ***
Open Event Registration Page
  Open Browser    ${WELCOME URL}    ${BROWSER} 
  
Register Success:
	INPUT Text    firstname    Somsri
	INPUT Text    lastname    Sodsai
	INPUT Text    organization    CS KKU
	INPUT Text    email    somsri@kkumail.com
	INPUT Text    phone    081-001-1234
	CLICK Button    registerButton
	Title Should Be    Success 
	Wait Until Page Contains    Success
	Wait Until Page Contains    Thank you for participating in our event
        Close Browser

*** Testcases ***
Open Event Registration Page
  Open Browser    ${WELCOME URL}    ${BROWSER}
  
Register Success No Organization Info:
	INPUT Text    firstname    Somsri
	INPUT Text    lastname    Sodsai
	INPUT Text    email    somsri@kkumail.com
	INPUT Text    phone    081-001-1234
	CLICK Button    registerButton
	Title Should Be    Success 
	Wait Until Page Contains    Success
	Wait Until Page Contains    Thank you for participating in our event
        Close Browser

*** Testcases ***
Open Event Registration Page
  Open Browser    ${WELCOME URL}    ${BROWSER}
  
Empty First Name:
	INPUT Text    lastname    Sodsai
	INPUT Text    organization    CS KKU
	INPUT Text    email    somsri@kkumail.com
	INPUT Text    phone    081-001-1234
	CLICK Button    registerButton 
	Wait Until Page Contains    Please enter your first name!!
        Close Browser

*** Testcases ***
Open Event Registration Page
  Open Browser    ${WELCOME URL}    ${BROWSER}
  
Empty Last Name:
	INPUT Text    firstname    Somsri
	INPUT Text    organization    CS KKU
	INPUT Text    email    somsri@kkumail.com
	INPUT Text    phone    081-001-1234
	CLICK Button    registerButton 
	Wait Until Page Contains    Please enter your last name!!
        Close Browser
	
*** Testcases ***
Open Event Registration Page
  Open Browser    ${WELCOME URL}    ${BROWSER}
  
Empty First Name and Last Name:
	INPUT Text    organization    CS KKU
	INPUT Text    email    somsri@kkumail.com
	INPUT Text    phone    081-001-1234
	CLICK Button    registerButton 
	Wait Until Page Contains    Please enter your name!!
        Close Browser

*** Testcases ***
Open Event Registration Page
  Open Browser    ${WELCOME URL}    ${BROWSER}
  
Empty Email:
	INPUT Text    firstname    Somsri
	INPUT Text    lastname    Sodsai
	INPUT Text    organization    CS KKU
	INPUT Text    phone    081-001-1234
	CLICK Button    registerButton
	Wait Until Page Contains    Please enter your email!!
        Close Browser

*** Testcases ***
Open Event Registration Page
  Open Browser    ${WELCOME URL}    ${BROWSER}
  
Empty Phone Number:
	INPUT Text    firstname    Somsri
	INPUT Text    lastname    Sodsai
	INPUT Text    organization    CS KKU
	INPUT Text    email    somsri@kkumail.com
	CLICK Button    registerButton
	Wait Until Page Contains    Please enter your phone number!!
        Close Browser
	
*** Testcases ***
Open Event Registration Page
  Open Browser    ${WELCOME URL}    ${BROWSER}
  
Invalid Phone Number:
	INPUT Text    firstname    Somsri
	INPUT Text    lastname    Sodsai
	INPUT Text    organization    CS KKU
	INPUT Text    email    somsri@kkumail.com
	INPUT Text    phone    1234
	CLICK Button    registerButton
	Wait Until Page Contains    Please enter a valid phone number, e.g., 081-234-5678, 081 234 5678, or 081.234.5678)
        Close Browser
