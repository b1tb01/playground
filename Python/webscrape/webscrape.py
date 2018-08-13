import os
import os.path
import csv
import sys
import time
import getpass
import requests
from bs4 import BeautifulSoup
from requests.auth import HTTPBasicAuth
import driverFunctions
import userInterface

# Startup function
browser = userInterface.startUp()
# the site to go to
url = 'http://' + input('Enter the website address: http://')

print('Website selected: ' + url)
print('\nStarting search...')

driverFunctions.getRequest(browser, url)

#driverFunctions.browser_load_wait(browser, 5, 'initial')
userInterface.search(browser)

print('Exiting...')
time.sleep(2)
driverFunctions.endScrape(browser)
sys.exit(0)
