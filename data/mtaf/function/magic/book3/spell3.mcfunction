scoreboard players operation @s spell9Seconds = @s spell9Cooldown
scoreboard players operation @s spell9Seconds /= #20 Const

execute if score @s spell9Cooldown matches 1.. run return run title @s actionbar ["Cooldown: ",{"score":{"name":"@s","objective":"spell9Seconds"}},"s"]
execute unless entity @s[gamemode=creative] if score @s XPPoints matches ..29 run return run title @s actionbar "Not Enough XP (needs 15)"

execute unless entity @s[gamemode=creative] if score @s IceCount matches ..1 run return run title @s actionbar "Not Enough Ice (needs 3)"

effect give @s water_breathing 120

clear @s ice 2
xp add @s -30


scoreboard players add @s spell9Cooldown 3600
