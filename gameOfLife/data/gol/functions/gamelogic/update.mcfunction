# running as: server
# runs a step of the game of life in one game tick
function gol:gamelogic/born

execute as @e[type=armor_stand,tag=gol_alive] at @s run function gol:gamelogic/countneighbors

execute as @e[type=armor_stand,tag=gol_alive,scores={gol_neighbors=..1}] at @s run function gol:gamelogic/die
execute as @e[type=armor_stand,tag=gol_alive,scores={gol_neighbors=4..}] at @s run function gol:gamelogic/die

tag @e[type=armor_stand,tag=gol_newcell] add gol_alive
tag @e[type=armor_stand,tag=gol_newcell] remove gol_newcell

function gol:gamelogic/draw

kill @e[type=armor_stand,tag=gol_tokill]
