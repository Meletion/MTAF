scoreboard players operation @s spell8Seconds = @s spell8Cooldown
scoreboard players operation @s spell8Seconds /= #20 Const

execute if score @s spell8Cooldown matches 1.. run return run title @s actionbar ["Cooldown: ",{"score":{"name":"@s","objective":"spell8Seconds"}},"s"]


summon minecraft:marker ~ ~1 ~ {Tags:[healingwatersphere]}
scoreboard players set @n[type=marker,tag=healingwatersphere] lifeexpiry 100


scoreboard players add @s spell8Cooldown 200