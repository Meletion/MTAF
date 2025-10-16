scoreboard players operation @a spell3Seconds = @a spell3Cooldown
scoreboard players operation @a spell3Seconds /= #20 Const


execute if score @s spell3Cooldown matches 1.. run title @s[scores={spell3Cooldown=1..}] actionbar ["Cooldown: ",{"score":{"name":"@s","objective":"spell3Seconds"}},"s"]
execute if score @s spell3Cooldown matches 1.. run return 0


execute if score @s XPPoints matches 0 run title @s actionbar "Not Enough XP (needs 30)"
execute if score @s XPPoints matches 0 run return 0

execute if block ^ ^1 ^1 air if block ^ ^2 ^1 air run tp @s ^ ^ ^4

playsound block.wool.break master @s ~ ~ ~ 5 1.4

xp add @s -30


scoreboard players add @s spell3Cooldown 60
