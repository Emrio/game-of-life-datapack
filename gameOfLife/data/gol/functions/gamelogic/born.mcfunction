# running as: server
# cell creation process : if a dead cell has 3 neighbors, it becomes alive
execute as @e[type=armor_stand,tag=gol_alive] at @s positioned ~-1 ~ ~1 unless entity @e[distance=..0.5] run function gol:gamelogic/countneighbors
execute as @e[type=armor_stand,tag=gol_alive,scores={gol_neighbors=3}] at @s positioned ~-1 ~ ~1 unless entity @e[distance=..0.5] run summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"Cell\"",CustomNameVisible:0,NoAI:1,NoGravity:1,Tags:["gol_newcell"],Invisible:1,Marker:1}

execute as @e[type=armor_stand,tag=gol_alive] at @s positioned ~ ~ ~1 unless entity @e[distance=..0.5] run function gol:gamelogic/countneighbors
execute as @e[type=armor_stand,tag=gol_alive,scores={gol_neighbors=3}] at @s positioned ~ ~ ~1 unless entity @e[distance=..0.5] run summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"Cell\"",CustomNameVisible:0,NoAI:1,NoGravity:1,Tags:["gol_newcell"],Invisible:1,Marker:1}

execute as @e[type=armor_stand,tag=gol_alive] at @s positioned ~1 ~ ~1 unless entity @e[distance=..0.5] run function gol:gamelogic/countneighbors
execute as @e[type=armor_stand,tag=gol_alive,scores={gol_neighbors=3}] at @s positioned ~1 ~ ~1 unless entity @e[distance=..0.5] run summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"Cell\"",CustomNameVisible:0,NoAI:1,NoGravity:1,Tags:["gol_newcell"],Invisible:1,Marker:1}

execute as @e[type=armor_stand,tag=gol_alive] at @s positioned ~1 ~ ~ unless entity @e[distance=..0.5] run function gol:gamelogic/countneighbors
execute as @e[type=armor_stand,tag=gol_alive,scores={gol_neighbors=3}] at @s positioned ~1 ~ ~ unless entity @e[distance=..0.5] run summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"Cell\"",CustomNameVisible:0,NoAI:1,NoGravity:1,Tags:["gol_newcell"],Invisible:1,Marker:1}

execute as @e[type=armor_stand,tag=gol_alive] at @s positioned ~1 ~ ~-1 unless entity @e[distance=..0.5] run function gol:gamelogic/countneighbors
execute as @e[type=armor_stand,tag=gol_alive,scores={gol_neighbors=3}] at @s positioned ~1 ~ ~-1 unless entity @e[distance=..0.5] run summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"Cell\"",CustomNameVisible:0,NoAI:1,NoGravity:1,Tags:["gol_newcell"],Invisible:1,Marker:1}

execute as @e[type=armor_stand,tag=gol_alive] at @s positioned ~ ~ ~-1 unless entity @e[distance=..0.5] run function gol:gamelogic/countneighbors
execute as @e[type=armor_stand,tag=gol_alive,scores={gol_neighbors=3}] at @s positioned ~ ~ ~-1 unless entity @e[distance=..0.5] run summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"Cell\"",CustomNameVisible:0,NoAI:1,NoGravity:1,Tags:["gol_newcell"],Invisible:1,Marker:1}

execute as @e[type=armor_stand,tag=gol_alive] at @s positioned ~-1 ~ ~-1 unless entity @e[distance=..0.5] run function gol:gamelogic/countneighbors
execute as @e[type=armor_stand,tag=gol_alive,scores={gol_neighbors=3}] at @s positioned ~-1 ~ ~-1 unless entity @e[distance=..0.5] run summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"Cell\"",CustomNameVisible:0,NoAI:1,NoGravity:1,Tags:["gol_newcell"],Invisible:1,Marker:1}

execute as @e[type=armor_stand,tag=gol_alive] at @s positioned ~-1 ~ ~ unless entity @e[distance=..0.5] run function gol:gamelogic/countneighbors
execute as @e[type=armor_stand,tag=gol_alive,scores={gol_neighbors=3}] at @s positioned ~-1 ~ ~ unless entity @e[distance=..0.5] run summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"Cell\"",CustomNameVisible:0,NoAI:1,NoGravity:1,Tags:["gol_newcell"],Invisible:1,Marker:1}
