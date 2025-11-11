# Magic

# Kills expired clouds
execute as @e[tag=hitboxcloud] if score @s cloudTimer matches ..0 run kill @s[tag=hitboxcloud]



# Magic triggers for gui, ZZZZZZZMTAFHelperTrigger = spell to switch
scoreboard players enable @a ZZZZZZZMTAFHelperTrigger

execute as @a if score @s ZZZZZZZMTAFHelperTrigger matches 6 run function mtaf:magic/book2/switching/spell3
execute as @a if score @s ZZZZZZZMTAFHelperTrigger matches 5 run function mtaf:magic/book2/switching/spell2
execute as @a if score @s ZZZZZZZMTAFHelperTrigger matches 4 run function mtaf:magic/book2/switching/spell1
# Spell book 2 ^^^

execute as @a if score @s ZZZZZZZMTAFHelperTrigger matches 9 run function mtaf:magic/book3/switching/spell3
execute as @a if score @s ZZZZZZZMTAFHelperTrigger matches 8 run function mtaf:magic/book3/switching/spell2
execute as @a if score @s ZZZZZZZMTAFHelperTrigger matches 7 run function mtaf:magic/book3/switching/spell1
# Spell book 3 ^^^

execute as @a if score @s ZZZZZZZMTAFHelperTrigger matches 12 run function mtaf:magic/book4/switching/spell3
execute as @a if score @s ZZZZZZZMTAFHelperTrigger matches 11 run function mtaf:magic/book4/switching/spell2
execute as @a if score @s ZZZZZZZMTAFHelperTrigger matches 10 run function mtaf:magic/book4/switching/spell1
# Spell book 4 ^^^

execute as @a if score @s ZZZZZZZMTAFHelperTrigger matches 15 run function mtaf:magic/book5/switching/spell3
execute as @a if score @s ZZZZZZZMTAFHelperTrigger matches 14 run function mtaf:magic/book5/switching/spell2
execute as @a if score @s ZZZZZZZMTAFHelperTrigger matches 13 run function mtaf:magic/book5/switching/spell1
# Spell book 5 ^^^

execute as @a if score @s ZZZZZZZMTAFHelperTrigger matches 3 run function mtaf:magic/book1/switching/spell3
execute as @a if score @s ZZZZZZZMTAFHelperTrigger matches 2 run function mtaf:magic/book1/switching/spell2
execute as @a if score @s ZZZZZZZMTAFHelperTrigger matches 1 run function mtaf:magic/book1/switching/spell1

# Hearts Withdraw
execute as @a[scores={withdrawHearts=1..}] run function mtaf:lifesteal/withdrawcheck


# Misc/Needed

schedule function mtaf:loops/1s 1s