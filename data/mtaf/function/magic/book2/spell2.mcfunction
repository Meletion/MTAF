scoreboard players operation @s spell5Seconds = @s spell5Cooldown
scoreboard players operation @s spell5Seconds /= #20 Const

execute if score @s spell5Cooldown matches 1.. run return run title @s actionbar ["Cooldown: ",{"score":{"name":"@s","objective":"spell5Seconds"}},"s"]

execute unless entity @s[gamemode=creative] if score @s BlazePowderCount matches ..9 run return run title @s actionbar "Not Enough Blaze Powder (needs 10)"
execute unless entity @s[gamemode=creative] if score @s XPPoints matches ..30 run return run title @s actionbar "Not Enough XP (needs 30)"


effect give @s fire_resistance 300

playsound minecraft:item.firecharge.use master @a ~ ~ ~ 10 2

execute unless entity @s[gamemode=creative] run clear @s blaze_powder 10
execute unless entity @s[gamemode=creative] run xp add @s -30

scoreboard players add @s spell5Cooldown 12000
