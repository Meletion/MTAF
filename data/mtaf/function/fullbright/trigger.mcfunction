
scoreboard players set @s Fullbright 0


execute if entity @s[tag=fullbrighter] run return run tag @s remove fullbrighter
tag @s add fullbrighter