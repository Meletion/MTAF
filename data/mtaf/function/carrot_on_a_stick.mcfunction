
execute as @a at @s if entity @s[scores={carrotStickClick=1..}] run scoreboard players reset @s carrotStickClick



execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{spell_book:1}}}}] if score @s IsSneaking matches 1 run function mtaf:magic/book1/switch_spell

execute if score @s IsSneaking matches 1 run return 0



# Magic

execute as @a store result score @s TNTCount run clear @s minecraft:tnt 0
execute as @a store result score @s GunpowderCount run clear @s minecraft:gunpowder 0


#if score @s XPPoints matches 5..


# Spawn TNT Spell
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{current_spell:1,spell_book:1}}}}] run function mtaf:magic/book1/spell1
#Spawn Cloud Spell
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{current_spell:2,spell_book:1}}}}] run function mtaf:magic/book1/spell2
# Spawn Dash Spell
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{current_spell:3,spell_book:1}}}}] run function mtaf:magic/book1/spell3


# Misc

