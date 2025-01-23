# Count online players
scoreboard players set OnlinePlayers poe.variables 0
execute as @a run scoreboard players add OnlinePlayers poe.variables 1

# get ready to pause
# If players are offline and the state is unpaused (1), transition to idle (2)
execute if score OnlinePlayers poe.variables matches 0 if score State poe.variables matches 1 run scoreboard players set State poe.variables 2

# If no players are online and the state is idle (2), pause the game
# say its pausing
execute if score OnlinePlayers poe.variables matches 0 if score State poe.variables matches 2 run say Pausing game in 10s...
# schedule the pause in 10 seconds
execute if score OnlinePlayers poe.variables matches 0 if score State poe.variables matches 2 run schedule function poe:pause_game 10s
# set the state to 0(paused) while waiting for the scheduled function to execute
execute if score OnlinePlayers poe.variables matches 0 if score State poe.variables matches 2 run scoreboard players set State poe.variables 0

# get ready to resume
# If players are online and the state is paused (0), transition to idle (2)
execute if score OnlinePlayers poe.variables matches 1.. if score State poe.variables matches 0 run scoreboard players set State poe.variables 2

# If players are online and the state is idle (2), unpause the game
# clear the scheduled pause function if a player gets on before the pause happens
execute if score OnlinePlayers poe.variables matches 1.. if score State poe.variables matches 2 run schedule clear poe:pause_game
execute if score OnlinePlayers poe.variables matches 1.. if score State poe.variables matches 2 run function poe:resume_game











#set to false to signify the server didn't just start any more so it can start storing gamerules after first pause, which just happened
#scoreboard players set FreshStart poe.variables 0