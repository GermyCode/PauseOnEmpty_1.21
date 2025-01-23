# Store gamerule states into virtual players
execute store result score doDaylightCycle poe.variables run gamerule doDaylightCycle
execute store result score doWeatherCycle poe.variables run gamerule doWeatherCycle
execute store result score randomTick poe.variables run gamerule randomTickSpeed
execute store result score doFireTick poe.variables run gamerule doFireTick

# Store gamerule mob states into virtual players
execute store result score doMobSpawning poe.variables run gamerule doMobSpawning
execute store result score doMobLoot poe.variables run gamerule doMobLoot
execute store result score doTileDrops poe.variables run gamerule doTileDrops