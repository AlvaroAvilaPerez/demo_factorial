*** Settings ***
Documentation    Test Suite using Gherkin for Calculate Factorial site
Library          factorial_calculator.py
Suite Teardown    Close Application
Test Template     Calculate Factorial of integer


*** Test Cases ***       			                               Number   Expected_Result_Message
Calculate Factorial of integer cero                                  0       The factorial of 0 is: 1
Calculate Factorial of valid integer one                             1       The factorial of 1 is: 1
Calculate Factorial of valid integer six                             6       The factorial of 6 is: 720
Verify that error is returned when set char instead of integer       s       Please enter an integer
Calculate Factorial of integer 170                                  170      The factorial of 170 is: 7.257415615307999e+306
Calculate Factorial of negative integer                             -1       Please enter a valid integer


*** Keywords ***
Calculate Factorial of integer
    [Arguments]  ${number}  ${result_message}
    Given User Navigates to Factorial Calculator Landing Page
    When Calculate the Factorial of  ${number}
    Then Verify Factorial result message returned  ${number}  ${result_message}

User Navigates to Factorial Calculator Landing Page
    navigate to factorial calculator site

Calculate the Factorial of
    [Arguments]  ${number}
    factorial calculator site   ${number}

Verify Factorial result message returned
    [Arguments]  ${number}  ${expected_result}
    ${actual_result}=  get result message  ${expected_result}
    should be equal  ${actual_result}  ${expected_result}   msg=Expected Result message is not the same to: Please enter a valid integer

Close Application
    close browser