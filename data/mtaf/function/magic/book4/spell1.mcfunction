scoreboard players operation @s spell10Seconds = @s spell10Cooldown
scoreboard players operation @s spell10Seconds /= #20 Const

execute if score @s spell10Cooldown matches 1.. run return run title @s actionbar ["Cooldown: ",{"score":{"name":"@s","objective":"spell10Seconds"}},"s"]

# Announce spell and set 1 second (20 ticks) cooldown
title @s actionbar "Spell 10"
scoreboard players add @s spell10Cooldown 20
