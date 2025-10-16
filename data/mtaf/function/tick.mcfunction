execute as @a at @s if entity @s[scores={carrotStickClick=1..}] run function mtaf:carrot_on_a_stick


# Sneaking check

scoreboard players set @a IsSneaking 0


# MAGIC ]]]]]]]]]]]]]]]]]]]



# Cooldowns
execute as @e run execute if score @s spell1Cooldown matches 1.. run scoreboard players remove @s spell1Cooldown 1
execute as @e run execute if score @s spell2Cooldown matches 1.. run scoreboard players remove @s spell2Cooldown 1
execute as @e run execute if score @s spell3Cooldown matches 1.. run scoreboard players remove @s spell3Cooldown 1

# Cloud Decaying.
scoreboard players remove @e[tag=hitboxcloud] cloudTimer 1


# VFX


# Crafting Checks, that we need to be quick.
execute as @a if items entity @s container.* minecraft:gunpowder[minecraft:custom_data={mtaf_coal_to_gunpowder:1b}] run function mtaf:coaltogunpowder/coal_to_gunpowder_process






