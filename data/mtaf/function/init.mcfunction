# called from load.mcfunction

# First time for lifesteal mainly
scoreboard objectives add mtafFirstTime dummy

######                                                              Config INIT                                                                             ######

scoreboard players set $coal_to_gunpowder_enabled _vars 1
scoreboard players set $deathCoordsEnabled _vars 1
scoreboard players set $armorStandsHaveArms _vars 0
scoreboard players set $lifestealEnabled _vars 0
scoreboard players set $fullbright _vars 1

# Const for some comparing math.
scoreboard objectives add Const dummy
scoreboard players set #20 Const 20

# Right Click Detection handled in carrot_on_a_stick.mcfunction
scoreboard objectives add carrotStickClick minecraft.used:minecraft.carrot_on_a_stick


######                                                               Scoreboard Inits                                                                       ######


# Sneaking Scoreboard (we reset this to 0 every tick, so 1 is sneaking, and 0 is not sneaking.)
scoreboard objectives add IsSneaking minecraft.custom:minecraft.sneak_time

# Death Coords Scoreboards
scoreboard objectives add died deathCount
scoreboard objectives add died_check dummy
scoreboard objectives add deathX dummy
scoreboard objectives add deathY dummy
scoreboard objectives add deathZ dummy


# OnJoin Scoreboards
scoreboard objectives add JoinGame minecraft.custom:minecraft.leave_game

# Spell Book
scoreboard objectives add TNTCount dummy
scoreboard objectives add BlazePowderCount dummy
scoreboard objectives add GunpowderCount dummy
scoreboard objectives add IceCount dummy
scoreboard objectives add LavabucketCount dummy
scoreboard objectives add currentSpell dummy
scoreboard objectives add cloudTimer dummy


# ZZZZZZZMTAFHelperTrigger
scoreboard objectives add ZZZZZZZMTAFHelperTrigger trigger

# Cooldowns

scoreboard objectives add spell1Cooldown dummy
scoreboard objectives add spell2Cooldown dummy
scoreboard objectives add spell3Cooldown dummy
scoreboard objectives add spell4Cooldown dummy
scoreboard objectives add spell5Cooldown dummy
scoreboard objectives add spell6Cooldown dummy
scoreboard objectives add spell7Cooldown dummy
scoreboard objectives add spell8Cooldown dummy
scoreboard objectives add spell9Cooldown dummy
scoreboard objectives add spell10Cooldown dummy
scoreboard objectives add spell11Cooldown dummy
scoreboard objectives add spell12Cooldown dummy
scoreboard objectives add spell13Cooldown dummy
scoreboard objectives add spell14Cooldown dummy
scoreboard objectives add spell15Cooldown dummy

scoreboard objectives add spell1Seconds dummy
scoreboard objectives add spell2Seconds dummy
scoreboard objectives add spell3Seconds dummy
scoreboard objectives add spell4Seconds dummy
scoreboard objectives add spell5Seconds dummy
scoreboard objectives add spell6Seconds dummy
scoreboard objectives add spell7Seconds dummy
scoreboard objectives add spell8Seconds dummy
scoreboard objectives add spell9Seconds dummy
scoreboard objectives add spell10Seconds dummy
scoreboard objectives add spell11Seconds dummy
scoreboard objectives add spell12Seconds dummy
scoreboard objectives add spell13Seconds dummy
scoreboard objectives add spell14Seconds dummy
scoreboard objectives add spell15Seconds dummy
# XP Tracking
scoreboard objectives add XPPoints xp

# Life steal tracking
scoreboard objectives add maxhealth dummy
scoreboard objectives add heartcooldown dummy
scoreboard objectives add withdrawHearts trigger

# Raycasting
scoreboard objectives add raycastingsteps dummy

# Magic
scoreboard objectives add fireRingLoop dummy

######                                                               Misc                                                                                   ######

scoreboard objectives add Fullbright trigger
scoreboard objectives add fb_state dummy

# Expiry
scoreboard objectives add lifeexpiry dummy
# Make sure init doesn't get ran again.
scoreboard players set $alreadyran _vars 1