scoreboard players operation @s spell4Seconds = @s spell4Cooldown
scoreboard players operation @s spell4Seconds /= #20 Const

execute if score @s spell4Cooldown matches 1.. run return run title @s actionbar ["Cooldown: ",{"score":{"name":"@s","objective":"spell4Seconds"}},"s"]

execute unless entity @s[gamemode=creative] if score @s BlazePowderCount matches 0 run return run title @s actionbar "Not Enough Blaze Powder (needs 1)"
execute unless entity @s[gamemode=creative] if score @s XPPoints matches ..9 run return run title @s actionbar "Not Enough XP (needs 10)"


execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["FireRing","FireRingTargetTimer"],Invulnerable:1b}
execute as @e[type=marker,tag=FireRingTargetTimer] run scoreboard players set @s fireRingLoop 24
execute as @e[type=marker,tag=FireRingTargetTimer] run tag @s remove FireRingTargetTimer

playsound minecraft:item.firecharge.use master @a ~ ~ ~ 10 0.6
clear @s blaze_powder 1



xp add @s -10
scoreboard players add @s spell4Cooldown 100
