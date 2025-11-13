tag @s add book4spell1rayertag
scoreboard players set $book4spell1raycastinghit _vars 0
scoreboard players set $book4spell1raycastingdistance _vars 0
execute anchored eyes run function mtaf:magic/book4/spell1raycasting/ray
tag @s remove book4spell1rayertag