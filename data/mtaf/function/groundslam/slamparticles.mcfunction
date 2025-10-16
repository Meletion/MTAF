execute at @e[tag=groundslamming] run particle block{block_state:"minecraft:dirt"} ~ ~ ~ 2 0.2 2 0.04 300 force

# bigger slam (two passes)
execute at @e[tag=groundslamming] run particle block{block_state:"minecraft:dirt"} ~ ~ ~ 1.5 0.5 1.5 0.03 200 force
execute at @e[tag=groundslamming] run particle block{block_state:"minecraft:dirt"} ~ ~ ~ 3 0.8 3 0.05 350 force
