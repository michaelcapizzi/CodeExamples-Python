#set variables for scores
computer_score = 0
human_score = 0
print "Let's play Rock, Paper, Scissors!"
#human determines the number of rounds
points_to_win = raw_input("How many points are needed for a win?")
print "Ok.  First person to get " + str(points_to_win) + " points will win the game."

#function for computer's response to human choice
def computer_response():
    global human_choice
    if human_choice.lower() == 'r' or human_choice.lower() == 'rock':
        print "You chose Rock."
    elif human_choice.lower() == 'p' or human_choice.lower() == 'paper':
        print "You chose Paper."
    elif human_choice.lower() == 's' or human_choice.lower() == 'scissors':
        print "You chose Scissors."
    else:
        human_choice = raw_input("I don't understand your choice.  Choose 'R' for Rock, 'P' for Paper, or 'S' for scissors.")
        computer_response()

#function "winner" to determine the winner
def winner():
    global computer_score
    global human_score
    #human chooses Rock; computer chooses Paper
    if (human_choice.lower() == 'r' or human_choice.lower == 'rock') and computer_choice == 'Paper':
        print "Paper covers rock.  I win."
        computer_score += 1
        print "The score is: computer" + " " + str(computer_score) + ";" + " human" + " " + str(human_score) 
    #human chooses Rock; computer chooses Scissors
    elif (human_choice.lower() == 'r' or human_choice.lower == 'rock') and computer_choice == 'Scissors':
        print "Rock breaks scissors.  You win."
        human_score += 1
        print "The score is: computer" + " " + str(computer_score) + ";" + " human" + " " + str(human_score) 
    #human chooses Rock; computer chooses Rock
    elif (human_choice.lower() == 'r' or human_choice.lower == 'rock') and computer_choice == 'Rock':
        print "We both chose rock.  It's a tie."
        print "The score is: computer" + " " + str(computer_score) + ";" + " human" + " " + str(human_score)
    #human chooses Paper; computer chooses Rock
    elif (human_choice.lower() == 'p' or human_choice.lower == 'paper') and computer_choice == 'Rock':
        print "Paper covers rock.  You win."
        human_score += 1
        print "The score is: computer" + " " + str(computer_score) + ";" + " human" + " " + str(human_score) 
    #human chooses Paper; computer chooses Scissors
    elif (human_choice.lower() == 'p' or human_choice.lower == 'paper') and computer_choice == 'Scissors':
        print "Scissors cut paper.  I win."
        computer_score += 1
        print "The score is: computer" + " " + str(computer_score) + ";" + " human" + " " + str(human_score) 
    #human chooses Paper; computer chooses Paper
    elif (human_choice.lower() == 'p' or human_choice.lower == 'paper') and computer_choice == 'Paper':
        print "We both chose paper.  It's a tie."
        print "The score is: computer" + " " + str(computer_score) + ";" + " human" + " " + str(human_score) 
    #human chooses Scissors; computer chooses Rock
    elif (human_choice.lower() == 's' or human_choice.lower == 'scissors') and computer_choice == 'Rock':
        print "Rock breaks scissors.  I win."
        computer_score += 1
        print "The score is: computer" + " " + str(computer_score) + ";" + " human" + " " + str(human_score) 
    #human chooses Scissors; computer chooses Paper
    elif (human_choice.lower() == 's' or human_choice.lower == 'scissors') and computer_choice == 'Paper':
        print "Scissors cut paper.  You win."    
        human_score += 1
        print "The score is: computer" + " " + str(computer_score) + ";" + " human" + " " + str(human_score) 
    #human chooses Scissors; computer chooses Scissors
    elif (human_choice.lower() == 's' or human_choice.lower == 'scissors') and computer_choice == 'Scissors':
        print "We both chose scissors.  It's a tie."
        print "The score is: computer" + " " + str(computer_score) + ";" + " human " + str(human_score) 

while int(human_score) < int(points_to_win) and int(computer_score) < int(points_to_win):
    human_choice = raw_input("Choose (R)ock, (P)aper, or (S)cissors.")
    computer_response()
    import random
    computer_choice = random.choice(['Rock', 'Paper', 'Scissors'])
    import time
    time.sleep(1)
    print "I chose" + " " + str(computer_choice) + "."
    time.sleep(1)
    winner()
    time.sleep(1)
    raw_input("Hit 'Enter' to play the next round")
    
time.sleep(1)
print "Game is over!"
time.sleep(.5)
if int(human_score) == int(points_to_win):
    print "You scored " + str(points_to_win) + " points.  You win!"
elif int(computer_score) == int(points_to_win):
    print "I scored " + str(points_to_win) + " points.  I win!"
    



