tellraw @a {"color":"gold","text":"[!] Loaded MTAF by meletion, version: 1.1.2"}
#tellraw @a {"color":"red","text":"[!] THIS IS A TESTING COPY DO NOT DISTRIBUTE."}
tag Meletion add owner

######                                                               INIT STUFF                                                                             ######


# We add _vars first to make us able to init. This is also used by alot of other things.
scoreboard objectives add _vars dummy

# This takes the value of $alreadyran in vars into itself, which sounds useless, but in practice, if it doesn't exist it sets it to zero. If it's 1, then we set it to 1.
execute store result score $alreadyran _vars run scoreboard players get $alreadyran _vars

# If we haven't set it it's zero, and we run the init function.
execute if score $alreadyran _vars matches 0 run function mtaf:init



# Schedules for ticks and srtuff

function mtaf:magic/cloudinabottle/cloudcheck

# Generic Stuff




# Loops
function mtaf:loops/1s
function mtaf:loops/5s
function mtaf:loops/10s
function mtaf:loops/0.5s
function mtaf:loops/0.1s
schedule function mtaf:magic/book1/craftloop 10s
schedule function mtaf:magic/book2/craftloop 10s


