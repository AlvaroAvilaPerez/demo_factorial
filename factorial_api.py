import requests
from variables import base_url


def request_factorial_api(number, expected_result, expected_status_code):
    url = base_url + "/factorial"
    payload = {'number': f'{ int(number) }'}
    expected_response = {'answer': int(expected_result)}
    # Send a request to the API server and store the response.
    response = requests.post(url, data=payload)
    error_status_code = "Status code is different of 200 actual is: "\
                        + str(response.status_code)
    response_body = response.json()
    print(response_body)
    error_body = "Response Body is not the expected current is: " \
                 + str(response_body)
    assert response.status_code == int(expected_status_code), error_status_code
    assert response_body == expected_response, error_body
