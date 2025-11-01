# 0.5s loop

execute if score $fullbright _vars matches 0 run return run scoreboard players reset @a Fullbright

effect give @a[tag=fullbrighter] night_vision 20 255 true

scoreboard players enable @a Fullbright

execute as @a if score @s Fullbright matches 1.. run function mtaf:fullbright/trigger
