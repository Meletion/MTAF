scoreboard players operation @s spell10Seconds = @s spell10Cooldown
scoreboard players operation @s spell10Seconds /= #20 Const

execute if score @s spell10Cooldown matches 1.. run return run title @s actionbar ["Cooldown: ",{"score":{"name":"@s","objective":"spell10Seconds"}},"s"]

execute unless entity @s[gamemode=creative] if score @s DragonsBreathCount matches ..19 run return run title @s actionbar "Not Enough Dragon's Breath (needs 20)"
execute unless entity @s[gamemode=creative] if score @s XPPoints matches ..299 run return run title @s actionbar "Not Enough XP (needs 300)"



function mtaf:magic/book4/spell1raycasting/start_ray

particle end_rod ~ ~1.5 ~ 0.2 0.4 0.2 0.1 10 normal @a
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 0.5 1



scoreboard players add @s spell10Cooldown 20
