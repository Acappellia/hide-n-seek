execute store result score #has_pesticide hns run clear @s splash_potion 0

execute if score #has_pesticide hns matches 1.. run return -1

scoreboard players add @s hns_pesticide_cd 1

execute if score @s hns_pesticide_cd matches 0 run give @s splash_potion[custom_model_data=1,potion_contents={custom_effects:[{id:"wither",duration:240,amplifier:1}],custom_color:6246980},item_name='"杀虫剂"'] 1
execute if score @s hns_pesticide_cd matches 0 run scoreboard players set @s hns_pesticide_cd -100