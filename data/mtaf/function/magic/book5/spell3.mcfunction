scoreboard players operation @s spell15Seconds = @s spell15Cooldown
scoreboard players operation @s spell15Seconds /= #20 Const

execute if score @s spell15Cooldown matches 1.. run return run title @s actionbar ["Cooldown: ",{"score":{"name":"@s","objective":"spell15Seconds"}},"s"]

# Announce spell and set 1 second (20 ticks) cooldown
title @s actionbar "Spell 15"
scoreboard players add @s spell15Cooldown 20
