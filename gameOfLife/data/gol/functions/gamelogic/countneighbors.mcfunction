# running as: gol armor stand
# counts number of armor stands next to a position and returns the result to the @s entity
scoreboard players set @s gol_neighbors 0

execute positioned ~-1 ~ ~1 if entity @e[type=armor_stand,tag=gol_alive,distance=..0.5] run scoreboard players add @s gol_neighbors 1
execute positioned ~ ~ ~1 if entity @e[type=armor_stand,tag=gol_alive,distance=..0.5] run scoreboard players add @s gol_neighbors 1
execute positioned ~1 ~ ~1 if entity @e[type=armor_stand,tag=gol_alive,distance=..0.5] run scoreboard players add @s gol_neighbors 1
execute positioned ~1 ~ ~ if entity @e[type=armor_stand,tag=gol_alive,distance=..0.5] run scoreboard players add @s gol_neighbors 1
execute positioned ~1 ~ ~-1 if entity @e[type=armor_stand,tag=gol_alive,distance=..0.5] run scoreboard players add @s gol_neighbors 1
execute positioned ~ ~ ~-1 if entity @e[type=armor_stand,tag=gol_alive,distance=..0.5] run scoreboard players add @s gol_neighbors 1
execute positioned ~-1 ~ ~-1 if entity @e[type=armor_stand,tag=gol_alive,distance=..0.5] run scoreboard players add @s gol_neighbors 1
execute positioned ~-1 ~ ~ if entity @e[type=armor_stand,tag=gol_alive,distance=..0.5] run scoreboard players add @s gol_neighbors 1
