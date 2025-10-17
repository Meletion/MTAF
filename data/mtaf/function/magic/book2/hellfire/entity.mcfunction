
# Particles
summon minecraft:marker ^ ^5 ^1 {Tags:["firetrail"]}
tp @s ~ ~ ~ ~20 ~

execute unless entity @s[tag=inited] run function mtaf:magic/book2/hellfire/init