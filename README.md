# demo_factorial

This repository contains Tests for the Factorial Calculator site.

First Install Anaconda:  https://www.anaconda.com/products/individual
In a terminal window, navigate inside the parent directory of this README and execute the following to create the demo_env environment: 
a) `conda create --name demo_env`
b) `conda activate demo_env`
c) `pip install -r requirements.txt`


### API Documentation:

1) Endpoint: http://qainterview.pythonanywhere.com/factorial

      Description: Endpoint used to calculate the factorial of the given number
      Request Method: POST
      Payload: {“number”': “4”}
      Or
      cURL => curl --location --request POST 'http://qainterview.pythonanywhere.com/factorial' --form 'number="4"'

2) Endpoint: https://qainterview.pythonanywhere.com/terms
      Description: Endpoint used to retrieve the Terms and Conditions Document
      Request Method: GET

3) Endpoint: https://qainterview.pythonanywhere.com/privacy
      Description: Endpoint used to retrieve the Privacy Document
      Request Method: GET


### Bug Report

1) Bug Report document file with 5 Bugs found are in the ./Bugs Directory


### To Run Test Cases

1) In a terminal window, navigate inside the parent directory of this README and execute the following command to run the test cases:

      `robot .`
 