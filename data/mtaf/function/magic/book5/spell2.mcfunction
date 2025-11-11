scoreboard players operation @s spell14Seconds = @s spell14Cooldown
scoreboard players operation @s spell14Seconds /= #20 Const

execute if score @s spell14Cooldown matches 1.. run return run title @s actionbar ["Cooldown: ",{"score":{"name":"@s","objective":"spell14Seconds"}},"s"]

# Announce spell and set 1 second (20 ticks) cooldown
title @s actionbar "Spell 14"
scoreboard players add @s spell14Cooldown 20
