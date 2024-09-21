scoreboard players reset @s hns_atk

execute if score @s hns_atk_cd matches ..-1 run return -1
scoreboard players set @s hns_atk_cd -10

execute if items entity @s weapon.mainhand carrot_on_a_stick run item modify entity @s weapon.mainhand {function:"set_custom_model_data",value:2}

playsound item.brush.brushing.sand player @a ~ ~ ~ 1 0.8
playsound entity.player.attack.sweep player @a ~ ~ ~ 1 0.8
execute anchored eyes run particle sweep_attack ^ ^ ^1.5 0 0 0 0 5
execute anchored eyes run particle white_smoke ^ ^ ^1.5 1 0 1 0 5
execute anchored eyes run particle block{block_state:{Name:"sand"}} ^ ^ ^1.5 1 0.1 1 0 50

tag @s add attacker
execute anchored eyes positioned ^ ^ ^1.5 as @a[team=bug,distance=..1.5] at @s run function hns:atk/bug_hit
execute anchored eyes positioned ^ ^ ^1.5 as @e[type=interaction,tag=hns_trash,distance=..1.5] at @s run function hns:atk/trash_hit
tag @s remove attacker