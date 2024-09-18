effect give @s slowness 1 3 true
clear @s firework_rocket
scoreboard players set @s hns_firework_cd -200
attribute @s generic.jump_strength modifier add sticker -1 add_multiplied_base

execute if score @s hns_sticker_time matches 1.. run scoreboard players set @s hns_sticker_time 0
scoreboard players remove @s hns_sticker_time 2

execute if score @s hns_sticker_time matches ..-10 run effect give @s slowness 1 4 true
execute if score @s hns_sticker_time matches ..-20 run effect give @s slowness 1 5 true
execute if score @s hns_sticker_time matches ..-60 run effect give @s slowness 1 6 true

execute if score @s hns_sticker_time matches ..-100 run kill @s