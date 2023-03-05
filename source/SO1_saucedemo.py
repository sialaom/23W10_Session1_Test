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