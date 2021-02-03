from seleniumpagefactory.Pagefactory import PageFactory


class FactorialCalculatorPage(PageFactory):

    def __init__(self, driver):
        self.driver = driver

    # Define locators - key name will became WebElement using PageFactory
    locators = {
        "edtNumber": ('ID', 'number'),
        "lblTitle": ('CSS', '.col-md-6 > .margin-base-vertical'),
        "btnCalculate": ('ID', 'getFactorial'),
        "lblFactorialResult": ('ID', 'resultDiv')
    }

    def calculate_factorial(self, number):
        self.edtNumber.set_text(number)
        self.btnCalculate.click_button()

    def get_result_message(self, expected_message):
        self.lblFactorialResult.text_to_be_present_in_element(expected_message)
        current_result = self.lblFactorialResult.get_text()
        return current_result
