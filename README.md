# PauseOnEmpty_1.21
Datapack for servers

For Minecraft 1.21, I havent tested in any other version, but i play on 1.21 and it works.

(Note: 1.21.4 servers have a built in pause ability in the server.properties file "pause-when-empty-seconds=", I would recommend using this over my datapack).

This is a server side datapack, not client side.

This datapack "pauses" the server when it detects no more players online. It changes the following gamerules when no players are online:
doDaylightCycle,
doWeatherCycle,
doTileDrops,
doMobSpawning,
doMobLoot,
doFireTick,
randomTickSpeed,
It also removes mob ai and gravity and makes the mob silent.

Once a player joins again it reverts the gamerules to what they were previously.

The reason why its not only daylight cycle is so the game actually acts like its paused and nothing happens, instead of just setting the daylight cycle to false so time doesn't just tick by.

# How it works
Every tick it checks for players online.

Im using the scoreboard as "variables" that i can store what the gamerules were before the pasue and recall them when a player joins and the game resumes.

When the datapack is loaded, it makes and stores scoreboard values that are associated with the gamerules mentioned above. Say doDaylightCycle is true, objective POE_Variables has fake player doDaylightCycle with score 1.

When there are no online players, it waits 10s before pausing. When it pauses, it stores the gamerules once again just incase anything changed, then it sets the gamerules to false and changes mob data.

When a player joins and the game resumes, it checks what the values are int he scoreboard and sets the gamerules accordingly. 1 for true, 0 for false   

The issues i ran into when making it were:
1. When the player joins, it tried to return the ai before any mobs are loaded.
   
   fix: It waits a second or so for the player to actually load the world then it returns mob data.
2. When the server initially starts, the gamerules were false (because there was most likely no players online before the server stopped), so when the scoreboard values are stored, it stores false values into the scoreboard and when it resumes, it sets the gamerules to false instead of what they were supposed to be.
   
   fix: It just checks if there are no players online when it first loads and if there are none then it doesnt store anything.
3. you cant directly recall a scoreboard value and put it into a command.
   
   fix: It checks if the value is 1, sets the gamerule to true, same for 0 except false. with random tick speed its 0-10 then 10 20 30 ect... if its over 100 it defaults to 100. I didnt want to specify if the value is 55 set it to 55, that wouldve taken alot of time and alot of lines in the file. There is probably a way better way to do it but this is what I settled with. (I didnt want to hard code anything but this is the only exception)
4. Possibly: When it resumes there are mobs on the edge of the render distance that still dont have any ai.
   
   fix: this could be from testing and not an issue, but it could be from me not resuming in the same location as when paused, so mobs arent getting loaded to have their ai returned. Again this could be from testing, but is something I have noticed while playing, although I havent noticed it since testing.

# How to install
Drop the .zip file into the datapack location on the server and reload the server using /reload.

If you want to make changes, do so either by using the 'data' folder from above or by unzipping it. When done, re-zip the files and drop the .zip into the datapack folder of your server.
