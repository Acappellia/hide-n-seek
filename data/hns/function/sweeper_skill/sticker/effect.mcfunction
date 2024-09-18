effect give @s slowness 1 1 true
clear @s firework_rocket

execute if score @s hns_sticker_time matches 1.. run scoreboard players set @s hns_sticker_time 0
scoreboard players remove @s hns_sticker_time 2

execute if score @s hns_sticker_time matches ..-20 run effect give @s slowness 1 3 true
execute if score @s hns_sticker_time matches ..-50 run effect give @s slowness 1 5 true
execute if score @s hns_sticker_time matches ..-80 run effect give @s slowness 1 8 true

execute if score @s hns_sticker_time matches ..-200 run kill @s