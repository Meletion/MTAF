# VFX for cloud
execute at @e[tag=hitboxcloud] run function mtaf:magic/vfx/cloud

# Healing water sphere
execute as @e[tag=healingwatersphere] at @s run function mtaf:magic/book3/spell3loop


# Death coords
execute as @a if score @s died > @s died_check run function mtaf:deathcoords/ondeath
execute as @a run scoreboard players operation @s died_check = @s died


######                                                            Death Coords Stuff                                                                        ######

# We update the death coords for each player.
execute as @a store result score @s deathX run data get entity @s Pos[0] 1
execute as @a store result score @s deathY run data get entity @s Pos[1] 1
execute as @a store result score @s deathZ run data get entity @s Pos[2] 1





schedule function mtaf:loops/0.1s 0.1s