# called from loops/5s.mcfunction

execute if score $armorStandsHaveArms _vars matches 1 as @e[type=armor_stand,nbt=!{ShowArms:1b}] run data merge entity @s {ShowArms:1b}
execute if score $armorStandsHaveArms _vars matches 0 as @e[type=armor_stand,nbt=!{ShowArms:0b}] run data merge entity @s {ShowArms:0b}