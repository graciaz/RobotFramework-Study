*** Settings ***
Library  BuildIn

*** Variables ***
${scalar}  Hello
@{List1}  Robot  Framework
&{dict}  Robot=value1   Framework=value2
*** Keywords ***

*** Test Cases ***
Test Data
   Log To Console    \n${scalar}
   Log To Console    \n${List1[1]}
   Log To Console    \n${dict.Robot}
