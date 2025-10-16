tellraw @s "Removing Datapack..."

scoreboard objectives remove _vars
scoreboard objectives remove carrotStickClick
scoreboard objectives remove cloudTimer
scoreboard objectives remove Const
scoreboard objectives remove currentSpell
scoreboard objectives remove deathX
scoreboard objectives remove deathY
scoreboard objectives remove deathZ
scoreboard objectives remove died
scoreboard objectives remove died_check
scoreboard objectives remove GunpowderCount
scoreboard objectives remove IsSneaking
scoreboard objectives remove spell1Cooldown
scoreboard objectives remove spell1Seconds
scoreboard objectives remove spell2Cooldown
scoreboard objectives remove spell2Seconds
scoreboard objectives remove ZZZZZZZMTAFHelperTrigger
scoreboard objectives remove TNTCount
scoreboard objectives remove GunpowderCount
scoreboard objectives remove XPPoints
scoreboard objectives remove JoinGame
scoreboard objectives remove heartcooldown
scoreboard objectives remove withdrawHearts
scoreboard objectives remove maxhealth
scoreboard objectives remove raycastingsteps
tellraw @s {"text":"Sorry to see you go, please contact @meletionyt on discord for any concerns, and have a good rest of your day.\nRemove datapack to finish removal."}
datapack disable "file/MTAF"