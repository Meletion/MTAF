# Move forward according to step size
#execute align xyz positioned ~.5 ~ ~.5 run tp @s ^ ^ ^0.3
tp @s ^ ^ ^0.1
# TEST
particle flame ~ ~ ~ 0 0 0 0 1 force

# Check for collisions with blocks
execute if block ~ ~ ~ enchanting_table run tag @s add hitEnchantingTable
execute unless block ~ ~ ~ air run tag @s add hitBlock

# Decrease the number of steps remaining
scoreboard players remove @s raycastingsteps 1

# Recurse until we hit something or run out of steps
execute as @s[tag=!hitEnchantingTable,tag=!hitBlock,scores={raycastingsteps=1..}] at @s run function mtaf:xpraycast/move
