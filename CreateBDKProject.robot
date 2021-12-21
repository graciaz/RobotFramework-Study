*** Settings ***
Library  Selenium2Library

*** Variables ***
${url}  https://bdk-dev.entro-lab.com/auth/login
${Browser}  chrome
${count}  0
*** Keywords ***

*** Test Cases ***
1. เปิดเว็บไซต์ BDK
   Open Browser  ${url}  ${Browser}
   Maximize Browser Window
   Set Selenium Speed   0.6
2. กรอก Username txtPassword
   Input Text  id=txtEmail  entro.tester@gmail.com
   Input Text  id=txtPassword  Qatester27.
3. กด Login
   Click Button  //button[@class="btn btn-primary w-100"]
4. กด Create Project
5. กรอกชื่อ Project
6. กด Create
7. กดกลับมาหน้า Project
   FOR    ${count}    IN RANGE    0    3    1
   wait until page contains element    //div[text()="Create new project"]
   Click Element    //div[text()="Create new project"]
   Input Text    id=txtProjectname    Test-Automate-${count}
   Click Button  id=btnCreate
   wait until page contains element    //div[text()=" Projects "]
   Click Element    //div[text()=" Projects "]
   Log To Console    ${count}
   END