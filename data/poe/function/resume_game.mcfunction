# Restore previous gamerule states
function poe:apply_gamerules

# Re-enable AI and entity updates for all entities except players
schedule function poe:return_ai 1s

# Set state to 1 (unpaused)
scoreboard players set State poe.variables 1

say GAME IS NOW UNPAUSED
