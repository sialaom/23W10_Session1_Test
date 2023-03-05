from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.service import Service
import time
# Chemin du driver de navigateur
driver_path = r"D:\Formations_omar\ChromeDriver\chromedriver.exe"
service = Service(executable_path=driver_path)

# Instanciation du driver
driver = webdriver.Chrome(service=service)

# Ouvrir le site saucedemo.com
driver.get("https://www.saucedemo.com/")
username= driver.find_element(By.ID,"user-name")
password_input = driver.find_element(By.ID,"password")
password_input.send_keys("secret_sauce")
username.send_keys("standard_user")
login_button = driver.find_element(By.ID,"login-button")
login_button.click()
time.sleep(5)
assert "Login" not in driver.page_source

driver.quit()