execute unless block ~ ~ ~ air run function mtaf:magic/book4/spell1raycasting/hitblock
scoreboard players add $book4spell1raycastingdistance _vars 1
execute if score $book4spell1raycastinghit _vars matches 0 if score $book4spell1raycastingdistance _vars matches ..60 positioned ^ ^ ^0.5 run function mtaf:magic/book4/spell1raycasting/ray