# running as: server
# actionbar display of general information on the simulation
scoreboard players set gol_cells gol 0
execute as @e[type=armor_stand,tag=gol_alive] run scoreboard players add gol_cells gol 1

execute as @e[name="gol:simstatus",type=armor_stand,scores={gol=0}] run title @a actionbar ["",{"text":"Simulation: ","color":"dark_aqua"},{"text":"Halted","color":"dark_red"},{"text":" - ","color":"gray"},{"text":"Updating every ","color":"dark_aqua"},{"score":{"name":"gol_speed","objective":"gol"},"bold":true,"color":"dark_purple"},{"text":" tick(s)","color":"dark_aqua"},{"text":" - ","color":"gray"},{"text":"Alive cells: ","color":"dark_aqua"},{"score":{"name":"gol_cells","objective":"gol"},"bold":true,"color":"gold"}]
execute as @e[name="gol:simstatus",type=armor_stand,scores={gol=1}] run title @a actionbar ["",{"text":"Simulation: ","color":"dark_aqua"},{"text":"Running","color":"dark_green"},{"text":" - ","color":"gray"},{"text":"Updating every ","color":"dark_aqua"},{"score":{"name":"gol_speed","objective":"gol"},"bold":true,"color":"dark_purple"},{"text":" tick(s)","color":"dark_aqua"},{"text":" - ","color":"gray"},{"text":"Alive cells: ","color":"dark_aqua"},{"score":{"name":"gol_cells","objective":"gol"},"bold":true,"color":"gold"}]
