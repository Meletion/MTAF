tag @s add inited
tag @s add immunetohellstorm

setblock ~ ~ ~ fire keep

scoreboard players set @s lifeexpiry 120
damage @n[distance=..10,tag=!immunetohellstorm] 10 minecraft:in_fire

