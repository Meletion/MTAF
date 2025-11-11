scoreboard players operation @s spell13Seconds = @s spell13Cooldown
scoreboard players operation @s spell13Seconds /= #20 Const

execute if score @s spell13Cooldown matches 1.. run return run title @s actionbar ["Cooldown: ",{"score":{"name":"@s","objective":"spell13Seconds"}},"s"]

# Announce spell and set 1 second (20 ticks) cooldown
title @s actionbar "Spell 13"
scoreboard players add @s spell13Cooldown 20
