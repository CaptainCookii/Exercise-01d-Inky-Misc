/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = -1 //  0 Morning, 1 Noon, 2 Night




-> seashore

== seashore ==
{night_surf: You made it back safely.} You are sitting on the beach. It is { advance_time() }

+ [Stroll down the beach.] -> beach
+ { time == 0} [Go surfing.] -> surf
+ { time == 1} [Go surfing.] -> surf
* { time == 2} [Go surfing.] -> night_surf
-> DONE

== surf ==
Those waves were gnarllly. It is { advance_time() }

+ [Go back to the beach] -> seashore
* { time == 2 } [Catch the next wave] -> night_surf
+ { time == 1 } [Catch the next wave] -> surf
+ { time == 0 } [Catch the next wave] -> surf

== night_surf ==
You lost the beach in the darkness and are hopelessly lost. In the distance though there seems to be humming.

+ [Swim towards the sound] -> siren_ending
+ [Swim away from the sound] -> seashore

== siren_ending ==
As you draw closer to the sound the song becomes sickenly sweet and draws you in even more. On a rock sits the most beautiful woman you've ever seen. As you approach her you feel comfort like you've never felt before. You feel love in her embrace, and die happily in her arms as she feasts upon you.
-> END

== beach ==
This is further down the beach.

It is { advance_time() }
* { time == 1 } [Pick up some seashells] -> shells

+ [Stroll back up the beach] -> seashore

== shells ==
You pick up the shells
-> beach

== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    
    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Night"
    
    }
    
        
    ~ return time
    
    
    
