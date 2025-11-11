scoreboard players operation @s spell11Seconds = @s spell11Cooldown
scoreboard players operation @s spell11Seconds /= #20 Const

execute if score @s spell11Cooldown matches 1.. run return run title @s actionbar ["Cooldown: ",{"score":{"name":"@s","objective":"spell11Seconds"}},"s"]

# Announce spell and set 1 second (20 ticks) cooldown
title @s actionbar "Spell 11"
scoreboard players add @s spell11Cooldown 20
