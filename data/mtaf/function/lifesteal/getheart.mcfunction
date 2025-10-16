
execute store result score @s heartcooldown run time query gametime
scoreboard players add @s heartcooldown 10
schedule function mtaf:lifesteal/getheartcooldown 10t append

# If disabled then return and don't do anything with heart, and revoke advancement
execute if score $lifestealEnabled _vars matches 0 run return run advancement revoke @s only mtaf:click_stick

execute if score @s maxhealth matches ..19 run scoreboard players add @s maxhealth 1
execute if score @s maxhealth matches ..19 run clear @s red_dye[minecraft:custom_data={heart:1b}] 1
function mtaf:lifesteal/update_hearts