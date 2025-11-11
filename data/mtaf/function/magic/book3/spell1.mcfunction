scoreboard players operation @s spell7Seconds = @s spell7Cooldown
scoreboard players operation @s spell7Seconds /= #20 Const

execute if score @s spell7Cooldown matches 1.. run return run title @s actionbar ["Cooldown: ",{"score":{"name":"@s","objective":"spell7Seconds"}},"s"]

# Water Splash: clear nearby fire and play water sounds
execute at @s run fill ~5 ~-3 ~-5 ~-5 ~2 ~5 air replace fire
playsound minecraft:entity.generic.swim master @s ~ ~ ~ 1 1
playsound entity.splash_potion.throw master @s ~ ~ ~ 1 1

# Announce spell and set 1 second (20 ticks) cooldown
title @s actionbar "Water Splash"
scoreboard players add @s spell7Cooldown 20
