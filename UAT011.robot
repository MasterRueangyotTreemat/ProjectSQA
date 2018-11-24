*** Settings ***
Resource          UAT012_resources.robot

*** Test Cases ***
TC001 : Open Event Donor Page
    Open Donor Page
    Location Should Be    ${DONOR URL}
    Wait Until Page Contains    
    
TC002 : Register No Success With Id Card Empty Gender
    Input Register No Success With Id Card   ${EMPTY}    ${TITLE NAME}    ${FULL NAME}     ${BIRTHDAY}     ${ID CARD}     ${STUDENT ID}     ${TELEPHONE NUMBER}     ${PARENT PHONE NUMBER}     ${FACEBOOK}     ${IMAGE}     ${TYPE OF ATTENDEES}     ${UNIVERSITY}     ${EMAIL}     ${USERNAME}     ${PASSWORD}     ${REPEAT PASSWORD} 
    Location Should Contain    ${REGISTER URL}
    Capture Page Screenshot   filename=test.png
    
Donate Success :
1.	กดที่เมนูการบริจาค
2.	กดที่เมนูการยืนยันข้อมูลและหลักฐานการ                บริจาค
3.	กดเลือกเพศ (gender) = “ชาย”
4.	กดเลือกคำนำหน้า(name title) = “Mr.”
5.	กรอกข้อมูลที่ช่อง ชื่อ-สกุล (full name) = “Somnut Naja”
6.	กรอกข้อมูลชื่อมหาวิทยาลัยหรือองค์กร (organization) = “มหาวิทยาลัยขอนแก่น”
7.	กรอกข้อมูลเบอร์โทรศัพท์ติดต่อ 
(telephone number)  = “Number”
8.	กรอกข้อมูล E-mail = “testuat@gmail.com”
9.	กรอกข้อมูลวันที่บริจาค (donation day) = “10/04/2018”
10.	กรอกข้อมูลช่องทางการบริจาค 
(donation channel) = “โอนเงิน”
11.	กรอกข้อมูลมูลค่าหรือจำนวนเงินที่บริจาค 
(donation amount) = “200”
12.	อัปโหลดรูปภาพหลักฐานการบริจาค 
(picture of donation) 
13.	อัปโหลดรูปภาพสัญลักษณ์มหาวิทยาลัยหรือองค์กร 
(logo of organization)
14.	กดเลือกการรับใบเสร็จ 
(receive receipt by on-carrier) = 
“รับด้วยตนเองที่การบัญชี คณะวิทยาศาสตร์ 
(receive a receipt directly from accounting, faculty of science)”
15.	กดปุ่มยืนยันหลักฐานการบริจาค
