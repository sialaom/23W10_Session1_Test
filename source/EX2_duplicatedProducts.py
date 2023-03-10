from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.service import Service
import time
# Chemin du driver de navigateur
driver_path = r"C:\Formations_omar\tools\chromedriver_win32\chromedriver.exe"
service = Service(executable_path=driver_path)

# Instanciation du driver
driver = webdriver.Chrome(service=service)

# Ouvrir le site saucedemo.com
driver.get("https://www.saucedemo.com/")
username= driver.find_element(By.ID,"user-name")
password_input = driver.find_element(By.ID,"password")
password_input.send_keys("secret_sauce")
username.send_keys("problem_user")
login_button = driver.find_element(By.ID,"login-button")
login_button.click()
time.sleep(5)
assert "Login" not in driver.page_source

product_names =[]
products_namesElm = driver.find_elements(By.CLASS_NAME, "inventory_item_name")
for product_name in products_namesElm:
    if(product_name.text != None):
        product_names.append(product_name.text)
# print(product_names)

# Vérifie si la liste des images de produits n'est pas dupliquée
assert len(product_names) == len(set(product_names)), "La liste des images de produits est dupliquée."
driver.quit()