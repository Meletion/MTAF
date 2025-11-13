scoreboard players operation @s spell11Seconds = @s spell11Cooldown
scoreboard players operation @s spell11Seconds /= #20 Const

execute if score @s spell11Cooldown matches 1.. run return run title @s actionbar ["Cooldown: ",{"score":{"name":"@s","objective":"spell11Seconds"}},"s"]


execute unless entity @s[gamemode=creative] if score @s sugarCount matches ..29 run return run title @s actionbar "Not Enough Sugar (needs 30)"
execute unless entity @s[gamemode=creative] if score @s XPPoints matches ..199 run return run title @s actionbar "Not Enough XP (needs 200)"


effect give @s speed 1 40 true

clear @s minecraft:sugar 30
xp add @s -200

scoreboard players add @s spell11Cooldown 20
