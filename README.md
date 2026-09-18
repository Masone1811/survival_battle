I followed GDQuest tutorial linked here: https://www.youtube.com/watch?v=GwCiGixlqiU
I used GDQuest tutorial assets linked here: https://www.gdquest.com/library/first_2d_game_godot4_vampire_survivor/

It took me about 3.5 hours to work through the tutorial to get the game running which includes the time following the tutorial and the time debugging issues I ran into.


1st Change:
I added a a new CanvasLayer that I called UILayer, and I attached a Label to it that I called SurvivalTimer. I wrote a function that tracks the amount of time a player has survived 
and prints it to that layer so the player can see the time at the top left of their screen. I edited the spawn mob functions to start slower but increase the spawn rate based on how long the player
has survived for.
Adding the timer and changing the spawn rate took me about 45 minutes to do.

2nd Change:
I added a kill counter function that tracks the amount of mobs the player kills. The kill counter displays at the top right of the screen mirrored to the survival timer at the top right. I added 
labels to the GameOver canvas layer that displays the kill counter and survival timer along with the Game Over text. The timer and counter that display at the top left and right of the screen
disappear when the Game Over screen appears to not be redundant.
These changes took me about 30 minutes.

3rd Change:
I fixed the camera position to the center of the screen by adding a Camera2D node and setting it's position to 960, 540. I added a function that allows the player to wrap around to the other side
when they reach the border of the screen in any direction. This works by checking the coordinates of the players position and if it becomes less than 0 or greater than the screen size in either
the x or y direction it sets the positional coordinate to either 0 or the max of the screen. I followed this YouTube tutorial to make this function: https://www.youtube.com/watch?v=acFfNAh0tRg
These changes took me about 30 minutes as well.
