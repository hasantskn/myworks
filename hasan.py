#Login Application

def login():
    username = 'tasmistaskin'
    password = '123456'
    
    print("Enter username: ")
    usernameInput = input()

    print("Enter password: ")
    passwordInput = input()
    
    if usernameInput == username and passwordInput == password:
        print('Login succesful')
    else:
        print('Username or password wrong try again..')
        login()

#Login()



userDictionary = {}

def registerUser():
    print("Enter username for registration: ")
    username = input()
    
    print("Enter password for registration: ")
    password = input()
    userDictionary[username] = password 
    
    
def loginWithDictionary():
    print("Enter username: ")
    usernameInput = input()

    print("Enter password: ")
    passwordInput = input()
    
    if userDictionary[usernameInput] == passwordInput:
        print('Login succesful')
    else:
        print('Username or password wrong try again...')
        loginWithDictionary()

registerUser()
loginWithDictionary()