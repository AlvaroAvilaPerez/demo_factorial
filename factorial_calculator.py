from variables import base_url
from variables import driver
from pages.factorial_page import FactorialCalculatorPage


def navigate_to_factorial_calculator_site():
    driver.get(base_url)


def factorial_calculator_site(number):
    factorial_calculator = FactorialCalculatorPage(driver)
    factorial_calculator.calculate_factorial(f"{number}")


def get_result_message(expected_result):
    factorial_calculator = FactorialCalculatorPage(driver)
    return factorial_calculator.get_result_message(expected_result)


def close_browser():
    driver.close()
