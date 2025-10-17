execute as @e[type=item,nbt={Item:{components:{"minecraft:item_model":"mtaf:cloud_in_a_bottle"}, count:3}}] at @s if block ~ ~ ~ minecraft:enchanting_table run execute as @e[type=item,distance=..1,nbt={Item:{"id":"minecraft:book"}}] run execute as @e[type=item,distance=..1,nbt={Item:{"id":"minecraft:diamond", count:2}}] run function mtaf:magic/book1/oncraft


schedule function mtaf:magic/book1/craftloop 10s