
# If disabled then return and don't do anything with heart
scoreboard players remove @s[scores={withdrawHearts=1..}] withdrawHearts 1
execute if score $lifestealEnabled _vars matches 0 run return fail

execute if score @s maxhealth matches ..0 run return fail
execute if score @s maxhealth matches ..2 run function mtaf:lifesteal/withdrawoutofhearts
scoreboard players remove @s maxhealth 1
give @s red_dye[food={nutrition:0,saturation:0,can_always_eat:true},consumable={consume_seconds:2147483647},custom_data={heart:1b},custom_name={"color":"gold","italic":false,"text":"LifeSteal Heart"},lore=[{"color":"blue","italic":true,"text":"MTAF: Lifesteal"}]] 1
function mtaf:lifesteal/update_hearts