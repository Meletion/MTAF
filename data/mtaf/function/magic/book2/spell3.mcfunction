scoreboard players operation @s spell6Seconds = @s spell6Cooldown
scoreboard players operation @s spell6Seconds /= #20 Const

execute if score @s spell6Cooldown matches 1.. run return run title @s actionbar ["Cooldown: ",{"score":{"name":"@s","objective":"spell6Seconds"}},"s"]

execute unless entity @s[gamemode=creative] if score @s BlazePowderCount matches ..9 run return run title @s actionbar "Not Enough Blaze Powder (needs 10)"
execute unless entity @s[gamemode=creative] if score @s XPPoints matches ..30 run return run title @s actionbar "Not Enough XP (needs 30)"

execute unless entity @s[gamemode=creative] run clear @s blaze_powder 10
execute unless entity @s[gamemode=creative] run xp add @s -30


scoreboard players add @s spell6Cooldown 1200

tag @s add immunetohellstorm

execute as @e[tag=!immunetohellstorm,distance=..5,type=!#mtaf:fire_ring_no_select] at @s run function mtaf:magic/book2/hellfire/target