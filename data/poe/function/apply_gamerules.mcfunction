# Apply doDaylightCycle gamerule
execute if score doDaylightCycle poe.variables matches 0 run gamerule doDaylightCycle false
execute if score doDaylightCycle poe.variables matches 1 run gamerule doDaylightCycle true

# Apply doWeatherCycle gamerule
execute if score doWeatherCycle poe.variables matches 0 run gamerule doWeatherCycle false
execute if score doWeatherCycle poe.variables matches 1 run gamerule doWeatherCycle true

# Apply doMobSpawning gamerule
execute if score doMobSpawning poe.variables matches 0 run gamerule doMobSpawning false
execute if score doMobSpawning poe.variables matches 1 run gamerule doMobSpawning true

# Apply doMobLoot gamerule
execute if score doMobLoot poe.variables matches 0 run gamerule doMobLoot false
execute if score doMobLoot poe.variables matches 1 run gamerule doMobLoot true

# Apply doTileDrops gamerule
execute if score doTileDrops poe.variables matches 0 run gamerule doTileDrops false
execute if score doTileDrops poe.variables matches 1 run gamerule doTileDrops true

# Apply doFireTick gamerule
execute if score doFireTick poe.variables matches 0 run gamerule doFireTick false
execute if score doFireTick poe.variables matches 1 run gamerule doFireTick true



# Apply randomTickSpeed gamerule
execute if score randomTick poe.variables matches ..-1 run gamerule randomTickSpeed 0
execute if score randomTick poe.variables matches 0 run gamerule randomTickSpeed 0
execute if score randomTick poe.variables matches 1.. run gamerule randomTickSpeed 1
execute if score randomTick poe.variables matches 2.. run gamerule randomTickSpeed 2
execute if score randomTick poe.variables matches 3.. run gamerule randomTickSpeed 3
execute if score randomTick poe.variables matches 4.. run gamerule randomTickSpeed 4
execute if score randomTick poe.variables matches 5.. run gamerule randomTickSpeed 5
execute if score randomTick poe.variables matches 6.. run gamerule randomTickSpeed 6
execute if score randomTick poe.variables matches 7.. run gamerule randomTickSpeed 7
execute if score randomTick poe.variables matches 8.. run gamerule randomTickSpeed 8
execute if score randomTick poe.variables matches 9.. run gamerule randomTickSpeed 9
execute if score randomTick poe.variables matches 10.. run gamerule randomTickSpeed 10
execute if score randomTick poe.variables matches 20.. run gamerule randomTickSpeed 20
execute if score randomTick poe.variables matches 30.. run gamerule randomTickSpeed 30
execute if score randomTick poe.variables matches 40.. run gamerule randomTickSpeed 40
execute if score randomTick poe.variables matches 50.. run gamerule randomTickSpeed 50
execute if score randomTick poe.variables matches 60.. run gamerule randomTickSpeed 60
execute if score randomTick poe.variables matches 70.. run gamerule randomTickSpeed 70
execute if score randomTick poe.variables matches 80.. run gamerule randomTickSpeed 80
execute if score randomTick poe.variables matches 90.. run gamerule randomTickSpeed 90
execute if score randomTick poe.variables matches 100.. run gamerule randomTickSpeed 100
execute if score randomTick poe.variables matches 100.. run tellraw @a "randomTickSpeed is above 100, lowering it to 100"
# (You can extend this logic for other random tick speeds as needed)
