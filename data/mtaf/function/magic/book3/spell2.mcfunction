scoreboard players operation @s spell8Seconds = @s spell8Cooldown
scoreboard players operation @s spell8Seconds /= #20 Const

execute if score @s spell8Cooldown matches 1.. run return run title @s actionbar ["Cooldown: ",{"score":{"name":"@s","objective":"spell8Seconds"}},"s"]
execute unless entity @s[gamemode=creative] if score @s XPPoints matches ..14 run return run title @s actionbar "Not Enough XP (needs 15)"

execute unless entity @s[gamemode=creative] if score @s IceCount matches ..2 run return run title @s actionbar "Not Enough Ice (needs 3)"

execute unless entity @s[gamemode=creative] if score @s LavabucketCount matches ..0 run return run title @s actionbar "Lava Bucket Not In Inventory (needs 1)"



summon minecraft:marker ~ ~1 ~ {Tags:[healingwatersphere]}
scoreboard players set @n[type=marker,tag=healingwatersphere] lifeexpiry 100





scoreboard players add @s spell8Cooldown 200