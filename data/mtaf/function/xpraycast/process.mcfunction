# Initialize steps
scoreboard players set @s raycastingsteps 150

# Move the ray
execute at @s run function mtaf:xpraycast/move

# Check if the ray hit an enchanting table
execute as @s[tag=hitEnchantingTable] at @s align xyz positioned ~.5 ~ ~.5 run function mtaf:xpraycast/hit_enchanting_table

