# called from tick.mcfunction

execute if score $coal_to_gunpowder_enabled _vars matches 1 run give @s gunpowder 1
execute if score $coal_to_gunpowder_enabled _vars matches 0 run give @s coal 1

execute if score $coal_to_gunpowder_enabled _vars matches 0 run tellraw @s {"color":"#a3ac30","text":"That recipe has been disabled by an admin! (Coal To Gunpowder)\n[!] You have been refunded 1 coal."}

execute if score $coal_to_gunpowder_enabled _vars matches 0 run recipe take @s mtaf:coal_to_gunpowder

clear @s minecraft:gunpowder[minecraft:custom_data={mtaf_coal_to_gunpowder:1b}] 1