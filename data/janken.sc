100	- Hello there, are you interested in a game of rock paper and scissors?
	(200)Yes, sure.
	(300)No.

300 	- Sorry to hear that, Currently we only have rock paper and
	  scissors game with us, \n you can visit us later to see if something else
	  is also available. (0)

200	- Well then please choose one to start playing:(250)

210	- Do you want to play again? Well no problems from me.(250)

250	- Choose one:
	(500) Rock.
	(600) Paper.
	(700) Scissor.

# Any choice on above should result in loss.

500	- I choose Paper. (800) You Lose.

600	- I choose Scissor. (800) You Lose.

700	- I choose Rock. (800) You Lose.

800 	- Sorry that you lost, it wasn't your lucky day I guess.
	[1000]
	Do you want to try again?
	(900) No, I accept my defeat.
	(210) Yes, I'd like to try again.

900	- Well then, better luck next time. (0)

