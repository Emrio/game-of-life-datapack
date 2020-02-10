# running as: server
# sets a block underneath a cell
execute as @e[type=armor_stand,tag=gol_alive] at @s run setblock ~ ~-1 ~ black_concrete

execute as @e[type=armor_stand,tag=gol_tokill] at @s run setblock ~ ~-1 ~ white_concrete
