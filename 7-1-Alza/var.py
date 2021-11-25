en = {
    "computer_and_laptops": "xpath://a[@class='l0-catLink'][text()='Computers and Laptops']",
    "laptops": "xpath://a[contains(@class, 'subC') and not(contains(@class, 'subCat'))]//span[text()='Laptops']"
}
sk = {
    "computer_and_laptops": "xpath://a[@class='l0-catLink'][text()='Počítače a notebooky']",
    "laptops": "xpath://a[contains(@class, 'subC') and not(contains(@class, 'subCat'))]//span[text()='Počítače']"
}


def get_variables(language):
    if language == "sk":
        return sk
    return en


#  robot -V var.py:sk cart.robot