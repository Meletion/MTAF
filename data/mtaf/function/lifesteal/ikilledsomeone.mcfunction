advancement revoke @s only mtaf:i_killed_someone

execute if score $lifestealEnabled _vars matches 0 run return fail

tag @s add killer

scoreboard players remove @a[tag=dead] maxhealth 1

execute if score @s maxhealth matches 20.. run give @s red_dye[food={nutrition:0,saturation:0,can_always_eat:true},consumable={consume_seconds:2147483647},custom_data={heart:1b},custom_name={"color":"gold","italic":false,"text":"LifeSteal Heart"},lore=[{"color":"blue","italic":true,"text":"MTAF: Lifesteal"}]] 1


execute unless score @s maxhealth matches 20.. run scoreboard players add @s maxhealth 1


tag @a remove dead
function mtaf:lifesteal/update_hearts
