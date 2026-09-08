I followed GDQuest tutorial linked here: https://www.youtube.com/watch?v=GwCiGixlqiU
Initially I used GDQuest tutorial assets linked here: https://www.gdquest.com/library/first_2d_game_godot4_vampire_survivor/

It took me about 3.5 hours to work through the tutorial to get the game running which includes the time following the tutorial and the time debugging issues I ran into.


1st Change:
I added a a new CanvasLayer that I called UILayer, and I attached a Label to it that I called SurvivalTimer. I wrote a function that tracks the amount of time a player has survived 
and prints it to that layer so the player can see the time on their screen. I edited the spawn mob functions to start slower but increase the spawn rate based on how long the player
has survived for.
Adding the timer and changing the spawn rate took me about 45 minutes to do.
