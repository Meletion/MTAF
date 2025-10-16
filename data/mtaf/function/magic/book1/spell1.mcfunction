
scoreboard players operation @a spell1Seconds = @a spell1Cooldown
scoreboard players operation @a spell1Seconds /= #20 Const




execute if score @s spell1Cooldown matches 1.. run return run title @s[scores={spell1Cooldown=1..}] actionbar ["Cooldown: ",{"score":{"name":"@s","objective":"spell1Seconds"}},"s"]
execute if score @s TNTCount matches 0 run return run title @s actionbar "Not Enough TNT (needs 1)"
execute if score @s XPPoints matches 0 run return run title @s actionbar "Not Enough XP (needs 5)"



execute if items entity @s container.* tnt run summon tnt

execute if items entity @s container.* tnt run clear @s tnt 1

xp add @s -5

scoreboard players add @s spell1Cooldown 20
