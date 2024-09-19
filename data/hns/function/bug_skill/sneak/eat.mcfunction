execute if score @s hns_eat_cd matches ..-1 run return -1
scoreboard players set @s hns_eat_cd -12

execute as @n[distance=..1,type=interaction,tag=hns_food] run function hns:food/eaten

playsound entity.generic.eat player @a ~ ~ ~ 1 1.3

scoreboard players add @s hns_xp 1

execute if score @s hns_xp matches 25.. run scoreboard players add @s hns_level 1
execute if score @s hns_xp matches 25.. run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1
execute if score @s hns_xp matches 25.. run scoreboard players set @s hns_xp 0

function hns:player/update_xp