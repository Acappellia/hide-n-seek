execute align xz positioned ~0.5 ~ ~0.5 run summon interaction ~ ~ ~ {Tags:["hns_food","new","hns_food_basket"],width:0,height:0,Passengers:[{id:item_display,transformation:[-2,0,0,0,0,2,0,1,0,0,-2,0,0,0,0,2],item:{id:"firework_star",components:{custom_model_data:4}},Passengers:[{id:"text_display","text":'[{"text": "■■■■■■■■■■","color": "green"},{"text": "","color": "red"}]',background:0,line_width:1000,view_range:0.2,billboard:"vertical",transformation:[1,0,0,0,0,1,0,1,0,0,1,0,0,0,0,1]}]}]}

execute store result score @n[type=interaction,tag=new,distance=..10] hns_food_type run random value 10099..10106

execute as @n[type=interaction,tag=new,distance=..10] on passengers store result entity @s item.components."minecraft:custom_model_data" int 1 on vehicle run scoreboard players get @s hns_food_type

scoreboard players set @n[type=interaction,tag=new,distance=..10] hns_entity_health 100
tag @n[type=interaction,tag=new,distance=..10] remove new