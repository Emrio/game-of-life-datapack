# running as: server
# called on /reload, sets up the game of life
scoreboard objectives remove gol
scoreboard objectives add gol dummy "Game Of Life Data"

kill @e[type=armor_stand,name="gol:simstatus"]
summon minecraft:armor_stand 0 10 0 {CustomName:"\"gol:simstatus\"",CustomNameVisible:1,NoAI:1,NoGravity:1,Marker:1,Small:1,Visible:0,Tags:["gol_sim_off"]}

kill @e[type=armor_stand,name="gol:simtick"]
summon minecraft:armor_stand 0 10 0 {CustomName:"\"gol:simtick\"",CustomNameVisible:1,NoAI:1,NoGravity:1,Marker:1,Small:1,Visible:0}

scoreboard objectives remove gol_neighbors
scoreboard objectives add gol_neighbors dummy

scoreboard players set gol_speed gol 5
scoreboard players set @e[type=armor_stand,name="gol:simtick"] gol 1

scoreboard players set @e[type=armor_stand,name="gol:simstatus"] gol 1

scoreboard objectives remove gol_constants
scoreboard objectives add gol_constants dummy "Game Of Life Constants"
scoreboard players set gol_nb_two gol_constants 2
scoreboard players set gol_speed_min gol_constants 1
scoreboard players set gol_speed_max gol_constants 30

# give set cell egg
give @p bat_spawn_egg{display:{Name:"[{\"text\":\"Set cell\",\"italic\":false,\"color\":\"dark_green\"}]"},Enchantments:[{id:"aqua_affinity",lvl:1}],Unbreakable:1,HideFlags:63} 1

# give start/stop egg
give @p creeper_spawn_egg{display:{Name:"[{\"text\":\"Start/Stop Simulation\",\"italic\":false,\"color\":\"gold\"}]"},Enchantments:[{id:"aqua_affinity",lvl:1}],Unbreakable:1,HideFlags:63} 1

# give speed up egg
give @p rabbit_spawn_egg{display:{Name:"[{\"text\":\"Speed up\",\"italic\":false,\"color\":\"cyan\"}]"},Enchantments:[{id:"aqua_affinity",lvl:1}],Unbreakable:1,HideFlags:63} 1

# give slow down egg
give @p turtle_spawn_egg{display:{Name:"[{\"text\":\"Slow down\",\"italic\":false,\"color\":\"cyan\"}]"},Enchantments:[{id:"aqua_affinity",lvl:1}],Unbreakable:1,HideFlags:63} 1

# give kill all cells egg
give @p mooshroom_spawn_egg{display:{Name:"[{\"text\":\"Kill all cells\",\"italic\":false,\"color\":\"dark_red\"}]"},Enchantments:[{id:"aqua_affinity",lvl:1}],Unbreakable:1,HideFlags:63} 1

tellraw @a ["",{"text":"["},{"text":"Game Of Life","bold":true,"color":"gold"},{"text":"]"},{"text":" Successfully reloaded Game Of Life!","color":"dark_green"}]
