tellraw @s [{"color":"gold","text":"\n\n\n\n\n\n   MTAF (Meletion`s tweaks and features) [[CONFIG]]\n   Made by MELETION"}]

execute if score $coal_to_gunpowder_enabled _vars matches 1 run tellraw @s {"text":"Coal To Gunpowder In Furnaces: ON","color":"green","click_event":{"action":"run_command","command":"function mtaf:coaltogunpowder/disable"}}
execute if score $coal_to_gunpowder_enabled _vars matches 0 run tellraw @s {"text":"Coal To Gunpowder In Furnaces: OFF","color":"red","click_event":{"action":"run_command","command":"function mtaf:coaltogunpowder/enable"}}

execute if score $armorStandsHaveArms _vars matches 1 run tellraw @s {"text":"Armor Stand Arms: ON","color":"green","click_event":{"action":"run_command","command":"function mtaf:armorstandarms/disable"}}
execute if score $armorStandsHaveArms _vars matches 0 run tellraw @s {"text":"Armor Stand Arms: OFF","color":"red","click_event":{"action":"run_command","command":"function mtaf:armorstandarms/enable"}}

execute if score $deathCoordsEnabled _vars matches 1 run tellraw @s {"text":"Death Coords: ON","color":"green","click_event":{"action":"run_command","command":"function mtaf:deathcoords/disable"}}
execute if score $deathCoordsEnabled _vars matches 0 run tellraw @s {"text":"Death Coords: OFF","color":"red","click_event":{"action":"run_command","command":"function mtaf:deathcoords/enable"}}

execute if score $lifestealEnabled _vars matches 1 run tellraw @s {"text":"Lifesteal: ON","color":"green","click_event":{"action":"run_command","command":"function mtaf:lifesteal/disable"}}
execute if score $lifestealEnabled _vars matches 0 run tellraw @s {"text":"Lifesteal: OFF","color":"red","click_event":{"action":"run_command","command":"function mtaf:lifesteal/enable"}}

execute if score $fullbright _vars matches 1 run tellraw @s {"text":"Fullbright: ON","color":"green","click_event":{"action":"run_command","command":"function mtaf:lifesteal/disable"}}
execute if score $fullbright _vars matches 0 run tellraw @s {"text":"Fullbright: OFF","color":"red","click_event":{"action":"run_command","command":"function mtaf:lifesteal/enable"}}


#$lifestealEnabled

tellraw @s "\n\n\n\n\n\n\n\n\n\n\n"
tellraw @s "Psst.. Open Chat."
