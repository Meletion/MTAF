
scoreboard players operation @a spell2Seconds = @a spell2Cooldown
scoreboard players operation @a spell2Seconds /= #20 Const


execute if score @s spell2Cooldown matches 1.. run return run title @s[scores={spell2Cooldown=1..}] actionbar ["Cooldown: ",{"score":{"name":"@s","objective":"spell2Seconds"}},"s"]



execute unless entity @s[gamemode=creative] if score @s GunpowderCount matches ..6 run return run title @s actionbar "Not Enough Gunpowder (needs 5)"
execute unless entity @s[gamemode=creative] if score @s XPPoints matches ..11 run return run title @s actionbar "Not Enough XP (needs 10)"

summon creeper ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ExplosionRadius:-3b,Fuse:0,attributes:[{id:"minecraft:scale",base:0.1}]}

#effect give @s levitation 1 5 true

#execute as @s at @s run tp @s ~ ~5 ~


summon happy_ghast ~ ~ ~ {Silent:1b,NoAI:1b,Tags:["hitboxcloud"]}

scoreboard players set @n[type=minecraft:happy_ghast,tag=hitboxcloud] cloudTimer 500

effect give @e[type=minecraft:happy_ghast,tag=hitboxcloud] minecraft:invisibility infinite 255 true


execute unless entity @s[gamemode=creative] run clear @s gunpowder 5
execute unless entity @s[gamemode=creative] run xp add @s -10


scoreboard players add @s spell2Cooldown 50