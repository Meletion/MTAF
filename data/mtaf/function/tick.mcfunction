execute as @a at @s if entity @s[scores={carrotStickClick=1..}] run function mtaf:carrot_on_a_stick


# Sneaking check

scoreboard players set @a IsSneaking 0


# MAGIC ]]]]]]]]]]]]]]]]]]]

function mtaf:magic/book2/tick
# Cooldowns
execute as @e run execute if score @s spell1Cooldown matches 1.. run scoreboard players remove @s spell1Cooldown 1
execute as @e run execute if score @s spell2Cooldown matches 1.. run scoreboard players remove @s spell2Cooldown 1
execute as @e run execute if score @s spell3Cooldown matches 1.. run scoreboard players remove @s spell3Cooldown 1
execute as @e run execute if score @s spell4Cooldown matches 1.. run scoreboard players remove @s spell4Cooldown 1
execute as @e run execute if score @s spell5Cooldown matches 1.. run scoreboard players remove @s spell5Cooldown 1
execute as @e run execute if score @s spell6Cooldown matches 1.. run scoreboard players remove @s spell6Cooldown 1
execute as @e run execute if score @s spell7Cooldown matches 1.. run scoreboard players remove @s spell7Cooldown 1
execute as @e run execute if score @s spell8Cooldown matches 1.. run scoreboard players remove @s spell8Cooldown 1
execute as @e run execute if score @s spell9Cooldown matches 1.. run scoreboard players remove @s spell9Cooldown 1
execute as @e run execute if score @s spell10Cooldown matches 1.. run scoreboard players remove @s spell10Cooldown 1
execute as @e run execute if score @s spell11Cooldown matches 1.. run scoreboard players remove @s spell11Cooldown 1
execute as @e run execute if score @s spell12Cooldown matches 1.. run scoreboard players remove @s spell12Cooldown 1
execute as @e run execute if score @s spell13Cooldown matches 1.. run scoreboard players remove @s spell13Cooldown 1
execute as @e run execute if score @s spell14Cooldown matches 1.. run scoreboard players remove @s spell14Cooldown 1
execute as @e run execute if score @s spell15Cooldown matches 1.. run scoreboard players remove @s spell15Cooldown 1
# Cloud Decaying.
scoreboard players remove @e[tag=hitboxcloud] cloudTimer 1


# VFX


# Crafting Checks, that we need to be quick.
execute as @a if items entity @s container.* minecraft:gunpowder[minecraft:custom_data={mtaf_coal_to_gunpowder:1b}] run function mtaf:coaltogunpowder/coal_to_gunpowder_process



# Expiry scoreboard
scoreboard players remove @e[scores={lifeexpiry=1..}] lifeexpiry 1
kill @e[scores={lifeexpiry=..0}]
