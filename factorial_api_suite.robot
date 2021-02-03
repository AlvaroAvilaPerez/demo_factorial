*** Settings ***
Documentation    Test Suite that cover factorial api
Library          factorial_api.py
Test Template     Calculate Factorial of integer using API


*** Test Cases ***       			                               Number   Expected_Result   Expected_Status_Code
Calculate Factorial of integer cero                                  0             1                 200
Calculate Factorial of integer One                                   1             1                 200
Calculate Factorial of integer Six                                   6            720                200


*** Keywords ***
Calculate Factorial of integer using API
    [Arguments]  ${number}  ${expected_result}  ${expected_status_code}
    Request API Calculate the Factorial of  ${number}  ${expected_result}  ${expected_status_code}

Request API Calculate the Factorial of
    [Arguments]  ${number}  ${expected_result}  ${expected_status_code}
    request factorial api   ${number}   ${expected_result}   ${expected_status_code}

Close Application
    close browser