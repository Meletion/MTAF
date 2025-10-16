# Magic

# Kills expired clouds
execute as @e[tag=hitboxcloud] if score @s cloudTimer matches ..0 run kill @s[tag=hitboxcloud]



# Magic triggers for gui, ZZZZZZZMTAFHelperTrigger = spell to switch
scoreboard players enable @a ZZZZZZZMTAFHelperTrigger
execute as @a if score @s ZZZZZZZMTAFHelperTrigger matches 3 run function mtaf:magic/book1/switching/spell3
execute as @a if score @s ZZZZZZZMTAFHelperTrigger matches 2 run function mtaf:magic/book1/switching/spell2
execute as @a if score @s ZZZZZZZMTAFHelperTrigger matches 1 run function mtaf:magic/book1/switching/spell1

# Hearts Withdraw
execute as @a[scores={withdrawHearts=1..}] run function mtaf:lifesteal/withdrawcheck


# Misc/Needed

schedule function mtaf:loops/1s 1s