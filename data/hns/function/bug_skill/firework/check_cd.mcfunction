execute store result score #has_firework hns run clear @s firework_rocket 0

execute if score #has_firework hns matches 1.. run return -1

scoreboard players add @s hms_firework_cd 1

execute if score @s hms_firework_cd matches 0 run give @s firework_rocket 1
execute if score @s hms_firework_cd matches 0 run scoreboard players set @s hms_firework_cd -200