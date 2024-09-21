summon interaction ~ ~ ~ {Tags:["hns_trash_tmp","hns_trash","new"],width:0,height:0,Passengers:[{id:item_display,transformation:[-2,0,0,0,0,2,0,1,0,0,-2,0,0,0,0,2],item:{id:"firework_star",components:{custom_model_data:1}},Passengers:[{id:"text_display","text":'[{"text": "∎∎∎∎∎∎∎∎∎∎","color": "yellow"},{"text": "","color": "red"}]',background:0,line_width:1000,view_range:0.08,billboard:"vertical",transformation:[1,0,0,0,0,1,0,1,0,0,1,0,0,0,0,1]}]}]}
playsound block.grass.place block @a ~ ~0.5 ~ 1 0.8
particle poof ~ ~0.5 ~ 0.5 0.5 0.5 0 10
scoreboard players set @n[type=interaction,tag=new,distance=..10] hns_entity_health 10
tag @n[type=interaction,tag=new,distance=..10] remove new