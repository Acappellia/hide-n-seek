scoreboard players add @s hns_xp 1

execute if score @s hns_xp matches 10.. run scoreboard players add @s hns_level 1
execute if score @s hns_xp matches 10.. run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1
execute if score @s hns_xp matches 10.. run scoreboard players set @s hns_xp 0

function hns:player/update_xp