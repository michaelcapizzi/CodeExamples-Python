from __future__ import division

print "Let's see how many turns it takes for me to guess your number."
max_number = raw_input("Pick the maximum range you want to choose your number from.  Example:  1 to 'the number you choose.'")
print "Got it.  Now, take a moment to choose your number between 1 and " + str(max_number) + ".  I'll give you a few seconds."
import time
time.sleep(3)
max_guesses = round(.1 * int(max_number))
print "Got one?  I bet I can guess your number in less than " + str(max_guesses) + " guesses."
time.sleep(1)
print "I will guess a number, and you have to tell me if I need to go (H)igher or (L)ower to reach your number.  And if I guess your number, type (C)orrect."
time.sleep(1)
raw_input("Ready to start?  Hit Enter.")

count = 0
computer_guess = round(.5 * int(max_number))
human_response = 'a'

def how_computer_guesses():
    global human_response
    global computer_guess
    human_response = raw_input("Is your number " + str(computer_guess) + "?  Press (H)igher if I need to guess a higher number, (L)ower if I need to guess a lower number, or (C)orrect if I guessed it exactly.")
    #computer needs to go higher
    if human_response.lower() == 'h' or human_response.lower() == 'higher':
        computer_guess = round(1.5 * int(computer_guess))
        count =+ 1
    #computer needs to go lower
    #THIS ISN'T WORKING - NEED A WAY TO HAVE TWO VARIABLES: computer_guess and last_computer_guess
    elif human_response.lower() == 'l' or human_response.lower() == 'lower':
        computer_guess = round(.5 * abs(int(computer_guess) - int(computer_guess)))
        count =+ 1

#CAN'T SET THIS while STATEMENT CORRECTLY
while human_response.lower() == 'h' or human_response.lower() == 'higher' or human_response.lower() == 'l' or human_response.lower() == 'lower':
    how_computer_guesses()
        
print "I knew I could do it!  And it only took me " + str(count) + " guesses!"
if int(count) < int(max_guesses):
    print "And it took me " + str(int(max_guesses) - int(count)) + " less guesses than I first predicted.  Damn, I'm good."
elif int(count) > int(max_guesses):
    print "Darn.  It took me " + str(int(count) - int(max_guesses)) + " more guesses than I first predicted.  I'm going to have to practice."
else:
    print "See?  I told you I could guess your number in " + str(max_guesses) + " guesses."
        



