scoreboard players remove @s fireRingLoop 1
tp @s ~ ~ ~ ~15 ~
fill ~ ~ ~ ^ ^3 ^3 fire replace air
fill ~ ~-1 ~ ^ ^-1 ^3 magma_block replace stone
execute if score @s fireRingLoop matches 0 run kill @s