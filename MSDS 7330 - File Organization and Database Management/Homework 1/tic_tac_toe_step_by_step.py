# Zach Brown
# MSDS 7330 403
# tic_tac_toe_step_by_step.py
# 15 Sep 2015

# Initialize variables for each space on the board
spaces = [" "] * 9

# Initialize variable containing string represting numbered board spaces
guideBoard = " 0 | 1 | 2 \n-----------\n 3 | 4 | 5 \n-----------\n 6 | 7 | 8 "

# Initialize turn counter
turn = 0

# Define function to print the board in its current state
def printBoard():
    print "Current board:"
    print " " + spaces[0] + " | " + spaces[1] + " | " + spaces[2]
    print "-----------"
    print " " + spaces[3] + " | " + spaces[4] + " | " + spaces[5]
    print "-----------"
    print " " + spaces[6] + " | " + spaces[7] + " | " + spaces[8]

# Define function to check if game is over or not    
def gameOver():
    if (spaces[0] != " "):
        if ((spaces[0] == spaces[1] == spaces[2]) | (spaces[0] == spaces[4] == spaces[8]) | (spaces[0] == spaces[3] == spaces[6])):
            return spaces[0]
    if (spaces[1] != " "):
        if (spaces[1] == spaces[4] == spaces[7]):
            return spaces[1]
    if (spaces[2] != " "):
        if ((spaces[2] == spaces[4] == spaces[6]) | (spaces[2] == spaces[5] == spaces[8])):
            return spaces[2]
    if (spaces[3] != " "):
        if (spaces[3] == spaces[4] == spaces[5]):
            return spaces[3]
    if (spaces[6] != " "):
        if (spaces[6] == spaces[7] == spaces[8]):
            return spaces[6]
    if (" " not in spaces):
        return "Nobody"
    return False
        
# Define function to get next move from user input
def getMove():
    print "\n"   
    print "It's " + player + "'s turn"
    print "Where would you like to move?"
    print guideBoard
    
    # Get user input
    move = input("Specify which space to place your " + player + ": ")
    
    # Change the appropriate space variable to record the move
    # and increment the turn counter
    if ((move == 0) & (spaces[0] == " ")):
        spaces[0] = player
    elif ((move == 1) & (spaces[1] == " ")):
        spaces[1] = player
    elif ((move == 2) & (spaces[2] == " ")):
        spaces[2] = player
    elif ((move == 3) & (spaces[3] == " ")):
        spaces[3] = player
    elif ((move == 4) & (spaces[4] == " ")):
        spaces[4] = player
    elif ((move == 5) & (spaces[5] == " ")):
        spaces[5] = player
    elif ((move == 6) & (spaces[6] == " ")):
        spaces[6] = player
    elif ((move == 7) & (spaces[7] == " ")):
        spaces[7] = player
    elif ((move == 8) & (spaces[8] == " ")):
        spaces[8] = player
    # Print error and reprompt if input is invalid
    else:
        print "Please enter a valid move."
        getMove()
    
while (gameOver() == False):
    # Determine whose turn it is
    if (turn % 2 == 0):
        player = "X"
    else:
        player = "O"
    
    # Get the next move        
    getMove()
    
    # Increment the turn counter
    turn += 1
    
    # Print the board in its current state
    printBoard()
    
print "GAME OVER - " + gameOver() + " wins!"
