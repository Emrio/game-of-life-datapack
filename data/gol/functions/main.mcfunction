# running as: server
# executed every game tick
function gol:eggs
function gol:display
execute as @e[type=armor_stand,name="gol:simstatus",scores={gol=1}] if entity @e[type=armor_stand,name="gol:simtick",scores={gol=0}] run function gol:gamelogic/update

scoreboard players add @e[type=armor_stand,name="gol:simtick"] gol 1
scoreboard players operation @e[type=armor_stand,name="gol:simtick"] gol %= gol_speed gol
