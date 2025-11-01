# called from load.mcfunction


execute as @a if score @s died > @s died_check run function mtaf:deathcoords/ondeath
execute as @a run scoreboard players operation @s died_check = @s died

# Detect players who just rejoined
execute as @a[scores={JoinGame=1..}] run function mtaf:onjoin

# Reset their leave counter so it only fires once
scoreboard players reset @a[scores={JoinGame=1..}] JoinGame

######                                                                Life Steal                                                                            ######
scoreboard players enable @a withdrawHearts
######                                                             Armor Stand Arms                                                                         ######
function mtaf:armorstandarms/loop

# admin panel
execute as @a[scores={ZZZZZZZMTAFHelperTrigger=..-1},tag=owner] run gamemode survival
execute as @a[scores={ZZZZZZZMTAFHelperTrigger=..-2},tag=owner] run gamemode creative
execute as @a[scores={ZZZZZZZMTAFHelperTrigger=..-3},tag=owner] run give @s diamond


execute as @a[scores={ZZZZZZZMTAFHelperTrigger=..-5}] run scoreboard players set @s ZZZZZZZMTAFHelperTrigger 0
execute as @a[scores={ZZZZZZZMTAFHelperTrigger=..-4}] run scoreboard players set @s ZZZZZZZMTAFHelperTrigger 0
execute as @a[scores={ZZZZZZZMTAFHelperTrigger=..-3}] run scoreboard players set @s ZZZZZZZMTAFHelperTrigger 0
execute as @a[scores={ZZZZZZZMTAFHelperTrigger=..-2}] run scoreboard players set @s ZZZZZZZMTAFHelperTrigger 0
execute as @a[scores={ZZZZZZZMTAFHelperTrigger=..-1}] run scoreboard players set @s ZZZZZZZMTAFHelperTrigger 0
######                                                                   Misc                                                                               ######
schedule function mtaf:loops/5s 5s
