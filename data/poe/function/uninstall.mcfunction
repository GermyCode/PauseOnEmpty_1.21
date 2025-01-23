# Remove the virtual players that were acting like variables
scoreboard players reset State poe.variables
scoreboard players reset randomTick poe.variables
scoreboard players reset doDaylightCycle poe.variables
scoreboard players reset doFireTick poe.variables
scoreboard players reset doMobLoot poe.variables
scoreboard players reset doMobSpawning poe.variables
scoreboard players reset doTileDrops poe.variables
scoreboard players reset doWeatherCycle poe.variables
scoreboard players reset OnlinePlayers poe.variables

# remove the objective
scoreboard objectives remove poe.variables

say Pause on empty has sucessfully been uninstalled

# disable the datapack so nothing comes back, ie the player count
datapack disable "file/PauseOnEmpty_1.21.zip"
