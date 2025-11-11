scoreboard players operation @s spell12Seconds = @s spell12Cooldown
scoreboard players operation @s spell12Seconds /= #20 Const

execute if score @s spell12Cooldown matches 1.. run return run title @s actionbar ["Cooldown: ",{"score":{"name":"@s","objective":"spell12Seconds"}},"s"]

# Announce spell and set 1 second (20 ticks) cooldown
title @s actionbar "Spell 12"
scoreboard players add @s spell12Cooldown 20
