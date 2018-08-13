import sys
import driverFunctions

# Start up the program and driver


def startUp():
    mypath = False
    # program start output
    print('\nWebscraper v0.1 - Sean Myers - https://seanmyers.xyz')
    print('This is a general purpose webscraper.\n')

    driverpath = input(
        'Please enter the file path to your webdriver(1 for mypath): ')

    if(driverpath == '1'):
        mypath = True
    browser = driverFunctions.checkDriver(driverpath, mypath)

    print('\n----Current Modes---\n' +
          '1. No authentication websites.\n'
          '2. Authenticated websites (Username/Password).\n'
          'End of options.\n'
          )

    mode = input('Select a mode: ')
    try:
        mode = int(mode)
    except ValueError:
        print("ERROR: Please enter integer value for mode inputs.\n")
        sys.exit(1)
    print('Mode #' + str(mode) + ' selected.')
    return browser

# Find out what tag the user wants to search by


def search(browser):
    print('---Search Options---\n' +
          '1. Search by ID.\n' +
          '2. Search by Class.\n' +
          'End of options.\n')
    searchType = input('Selet a mode: ')
    try:
        searchType = int(searchType)
    except ValueError:
        print("ERROR: Please enter integer value for mode inputs.\n")
        sys.exit(1)
    print('Mode #' + str(searchType) + ' selected.')
    givenTag = input(
        'Enter tag value to search by: ')
    if(searchType == 1):
        driverFunctions.search_by_id(givenTag, browser)
    elif(searchType == 2):
        driverFunctions.search_by_class(givenTag, browser)
    return
