from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

# Configure le navigateur
driver = webdriver.Chrome()
url = "https://www.saucedemo.com/"

# Accède à l'URL de la page
driver.get(url)

# Rempli le formulaire de connexion
wait = WebDriverWait(driver, 10)
username = wait.until(EC.presence_of_element_located((By.ID, "user-name")))
username.send_keys("standard_user")
password = driver.find_element(By.ID, "password")
password.send_keys("secret_sauce")
login_button = driver.find_element(By.ID, "login-button")
login_button.click()

# Ajoute un produit au panier
add_to_cart_button = wait.until(EC.presence_of_element_located((By.ID, "add-to-cart-sauce-labs-backpack")))
add_to_cart_button.click()

# Vérifie que le produit a été ajouté au panier
remove_button = wait.until(EC.presence_of_element_located((By.ID, "remove-sauce-labs-backpack")))
assert remove_button.text == "Remove", "Le produit n'a pas été ajouté au panier avec succès."

# Ferme le navigateur
driver.quit()
