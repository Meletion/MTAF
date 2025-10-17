scoreboard players operation @a spell1Seconds = @a spell1Cooldown
scoreboard players operation @a spell1Seconds /= #20 Const

execute if score @s spell1Cooldown matches 1.. run return run title @s[scores={spell1Cooldown=1..}] actionbar ["Cooldown: ",{"score":{"name":"@s","objective":"spell1Seconds"}},"s"]

execute unless entity @s[gamemode=creative] if score @s TNTCount matches 0 run return run title @s actionbar "Not Enough TNT (needs 1)"
execute unless entity @s[gamemode=creative] if score @s XPPoints matches 0 run return run title @s actionbar "Not Enough XP (needs 5)"



summon tnt

execute unless entity @s[gamemode=creative] run clear @s tnt 1
execute unless entity @s[gamemode=creative] run xp add @s -5


scoreboard players add @s spell1Cooldown 20
