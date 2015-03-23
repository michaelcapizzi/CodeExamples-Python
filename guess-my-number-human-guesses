from __future__ import division

print "Let's see how many turns it takes for you to guess my number."
max_number = raw_input("Pick the maximum number you want me to choose from.")
print "Got it.  I'll choose a number between 1 and " + str(max_number) + ".  Give me a  moment to choose my number."
import time
time.sleep(2)
print "OK.  I have it."
time.sleep(1)
print "You try to guess my number, and I'll tell you if you need to go HIGHER or LOWER to reach my number.  OK?"

from random import randint
computer_number = randint(1,int(max_number))

human_guess = 0
number_guesses = 0
while int(human_guess) != int(computer_number):
    human_guess = raw_input("Take a guess.")
    time.sleep(.5)
    time.sleep(.25)
    if int(human_guess) < int(computer_number):
        print "Nope.  You have to go HIGHER to get to my number.  Try again."
    elif int(human_guess) > int(computer_number):
        print "Nope.  You have to go LOWER to get to my number.  Try again."
    number_guesses += 1
        
if int(number_guesses) == 1:
    print "Holy smokes.  You guessed my number on the first try!  Are you psychic?"
elif int(number_guesses) < .1 * int(max_number):
    print "Wow.  You're good.  You guessed my number quickly!  It only took you " + str(number_guesses) + " tries!"
elif .1 * int(max_number) < int(number_guesses) < .3 * int(max_number):
    print "Not bad.  You guessed my number in only " + str(number_guesses) + " tries!"
else:
    print "You finally guessed my number.  But it took you " + str(number_guesses) + " tries.  I was beginning to worry you'd never get it."


