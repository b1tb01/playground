import sys
import time
# Selenium imports
import selenium
from selenium.common.exceptions import TimeoutException
# Selenium Webdriver imports
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import Select
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

# Ensures the user has a valid driver path


def checkDriver(driverpath, mypath):
    if(mypath):
        driverpath = (
            r'/Users/sean/core/github/playground/Python/webscrape/chromedriver')
    try:
        browser = webdriver.Chrome(
            driverpath
        )
        print('Driver found at: ' + driverpath)
    except:
        print('No webdriver found.\n' + driverpath)
        sys.exit(1)
    browser.set_page_load_timeout(15)
    return browser


# Run a get request
def getRequest(browser, url):
    try:
        browser.get(url)
        time.sleep(2)
    except TimeoutException:
        print('\nERROR:Timeout Exception\n Ending program.')
        sys.exit(1)
    return browser

# End program and quit browser


def endScrape(browser):
    browser.quit()
    print('Search ended.')
    return

# Ensures the login page is entirely loaded before login attempt.


def login_load_wait(browser, timeout, name):

    try:
        element_present = EC.presence_of_element_located((By.ID, name))
        WebDriverWait(browser, timeout).until(element_present)
    except TimeoutException:
        print ("Timed out waiting for page to load")

# Ensures the page is entirely loaded before searching for elements by ID.


def browser_load_wait(browser, timeout, name):
    try:
        element_present = EC.presence_of_element_located((By.ID, name))
        WebDriverWait(browser, timeout).until(element_present)

        element_present = EC.presence_of_element_located((By.ID, 'the-table'))
        WebDriverWait(browser, timeout).until(element_present)

    except TimeoutException:
        print ("Timed out waiting for page to load")


def search_by_id(givenTag, browser):
    textContent = browser.find_element_by_id(givenTag).text
    print('Element content: ' + textContent)
    return

def search_by_class(givenTag, browser):
    textContent = browser.find_element_by_class_name(givenTag).text
    print('Element content: ' + textContent)
    return