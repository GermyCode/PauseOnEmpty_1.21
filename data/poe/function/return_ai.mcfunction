# Re-enable AI and entity updates for all entities except players
execute as @e[type=!player] run data merge entity @s {NoAI:0b,Silent:0b,NoGravity:0b}
