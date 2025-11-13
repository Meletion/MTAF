scoreboard players operation @s spell12Seconds = @s spell12Cooldown
scoreboard players operation @s spell12Seconds /= #20 Const

execute if score @s spell12Cooldown matches 1.. run return run title @s actionbar ["Cooldown: ",{"score":{"name":"@s","objective":"spell12Seconds"}},"s"]
execute unless entity @s[gamemode=creative] if score @s XPPoints matches ..249 run return run title @s actionbar "Not Enough XP (needs 250)"
execute unless entity @s[gamemode=creative] if score @s GunpowderCount matches ..63 run return run title @s actionbar "Not Enough Gunpowder (needs 64)"


execute at @s run fill ~10 ~-5 ~-10 ~-10 ~5 ~10 glass replace minecraft:stone
execute at @s run fill ~10 ~-5 ~-10 ~-10 ~5 ~10 glass replace minecraft:netherrack
execute at @s run fill ~10 ~-5 ~-10 ~-10 ~5 ~10 glass replace minecraft:deepslate

xp add @s -250
clear @s minecraft:gunpowder 64

scoreboard players add @s spell12Cooldown 3600
