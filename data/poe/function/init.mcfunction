# Initialize variables (one-time setup)
scoreboard objectives add poe.variables dummy "POE Variables"

# if there are no players on and previous state was paused
# say so and dont change the state since that leads to false/wrong gamerules
execute if score OnlinePlayers poe.variables matches 0 if score State poe.variables matches 0 run say GAME IS PAUSED
execute unless score State poe.variables matches 0 run scoreboard players set State poe.variables 2

# Count online players
scoreboard players set OnlinePlayers poe.variables 0
execute as @a run scoreboard players add OnlinePlayers poe.variables 1

# if the game is already running and a reload command executed,
# store the gamerules since there is a player on and gamerules shoule be as wanted
execute if score OnlinePlayers poe.variables matches 1.. run function poe:store_gamerules
scoreboard players set OnlinePlayers poe.variables 0








# Initialize a variable that states if the server just started so it doesnt store false/wrong gamerules
#scoreboard players set FreshStart poe.variables 1
