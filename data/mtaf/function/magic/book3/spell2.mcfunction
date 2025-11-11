scoreboard players operation @s spell8Seconds = @s spell8Cooldown
scoreboard players operation @s spell8Seconds /= #20 Const

execute if score @s spell8Cooldown matches 1.. run return run title @s actionbar ["Cooldown: ",{"score":{"name":"@s","objective":"spell8Seconds"}},"s"]

# Announce spell and set 1 second (20 ticks) cooldown
title @s actionbar "Spell 8"
scoreboard players add @s spell8Cooldown 20
