# VFX for cloud
execute at @e[tag=hitboxcloud] run function mtaf:magic/vfx/cloud


######                                                            Death Coords Stuff                                                                        ######

# We update the death coords for each player.
execute as @a store result score @s deathX run data get entity @s Pos[0] 1
execute as @a store result score @s deathY run data get entity @s Pos[1] 1
execute as @a store result score @s deathZ run data get entity @s Pos[2] 1

schedule function mtaf:loops/0.1s 0.1s