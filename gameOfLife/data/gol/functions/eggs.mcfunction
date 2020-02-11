# running as: server
# egg mechanics
execute as @e[type=bat,name="Set cell"] at @s unless entity @e[type=armor_stand,tag=gol_alive,distance=..0.5] run summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"Cell\"",CustomNameVisible:0,NoAI:1,NoGravity:1,Tags:["gol_alive"],Invisible:1,Marker:1}
execute as @e[type=bat,name="Set cell"] at @s run setblock ~ ~-1 ~ black_concrete
execute as @e[type=bat,name="Set cell"] run tp @s ~ ~-150 ~
execute as @e[type=bat,name="Set cell"] run kill @s

execute as @e[type=creeper,name="Start/Stop Simulation"] run scoreboard players add @e[type=armor_stand,name="gol:simstatus"] gol 1
execute as @e[type=creeper,name="Start/Stop Simulation"] run scoreboard players operation @e[type=armor_stand,name="gol:simstatus"] gol %= gol_nb_two gol_constants
execute as @e[type=creeper,name="Start/Stop Simulation"] run tp @s ~ ~-150 ~
execute as @e[type=creeper,name="Start/Stop Simulation"] run kill @s

execute as @e[type=rabbit,name="Speed up"] run scoreboard players remove gol_speed gol 1
execute as @e[type=rabbit,name="Speed up"] run scoreboard players operation gol_speed gol > gol_speed_min gol_constants
execute as @e[type=rabbit,name="Speed up"] run tp @s ~ ~-150 ~
execute as @e[type=rabbit,name="Speed up"] run kill @s

execute as @e[type=turtle,name="Slow down"] run scoreboard players add gol_speed gol 1
execute as @e[type=turtle,name="Slow down"] run scoreboard players operation gol_speed gol < gol_speed_max gol_constants
execute as @e[type=turtle,name="Slow down"] run tp @s ~ ~-150 ~
execute as @e[type=turtle,name="Slow down"] run kill @s

execute as @e[type=mooshroom,name="Kill all cells"] as @e[type=armor_stand,tag=gol_alive] at @s run setblock ~ ~-1 ~ white_concrete
execute as @e[type=mooshroom,name="Kill all cells"] as @e[type=armor_stand,tag=gol_alive] run kill @s
execute as @e[type=mooshroom,name="Kill all cells"] run tp @s ~ ~-150 ~
execute as @e[type=mooshroom,name="Kill all cells"] run kill @s
