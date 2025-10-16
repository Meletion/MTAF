execute as @a at @s if entity @s[y=190, dy=10, nbt={SelectedItem: {id: "minecraft:glass_bottle"}}] run function mtaf:magic/cloudinabottle/bottle
schedule function mtaf:magic/cloudinabottle/cloudcheck 5s
