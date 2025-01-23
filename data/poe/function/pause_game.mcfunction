# Store current gamerule states
#execute unless score FreshStart poe.variables matches 1 run function poe:store_gamerules
function poe:store_gamerules

# Disable mob spawning and updates
gamerule doMobSpawning false
gamerule doMobLoot false
gamerule doTileDrops false
gamerule doFireTick false

# Disable AI and entity updates for all entities except players
execute as @e[type=!player] run data merge entity @s {NoAI:1b,Silent:1b,NoGravity:1b}

# Stop day and weather cycles
gamerule doDaylightCycle false
gamerule doWeatherCycle false

# Set the random tick speed to 0
gamerule randomTickSpeed 0

# Set state to 0 (paused)
scoreboard players set State poe.variables 0

say GAME IS NOW PAUSED