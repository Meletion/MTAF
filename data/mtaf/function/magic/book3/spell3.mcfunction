scoreboard players operation @s spell9Seconds = @s spell9Cooldown
scoreboard players operation @s spell9Seconds /= #20 Const

execute if score @s spell9Cooldown matches 1.. run return run title @s actionbar ["Cooldown: ",{"score":{"name":"@s","objective":"spell9Seconds"}},"s"]

# Announce spell and set 1 second (20 ticks) cooldown
title @s actionbar "Spell 9"
scoreboard players add @s spell9Cooldown 20
