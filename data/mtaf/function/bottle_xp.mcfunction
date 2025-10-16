clear @s minecraft:glass_bottle 1
give @s minecraft:experience_bottle
xp add @s -12 points
playsound minecraft:item.bottle.fill_dragonbreath player @a ~ ~ ~ 1 1.25


function mtaf:xpraycast/cast

advancement revoke @s only mtaf:xp_bottle