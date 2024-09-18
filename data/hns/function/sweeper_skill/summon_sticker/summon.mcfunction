scoreboard players reset @s hns_sticker_use

execute unless data entity @s {OnGround:1b} run return -1

summon interaction ~ ~ ~ {Tags:["hns_sticker"],width:1,height:0.2,Passengers:[{id:item_display,transformation:[-2,0,0,0,0,2,0,1,0,0,-2,0,0,0,0,2],item:{id:"firework_star",components:{custom_model_data:5}}}]}
playsound item.book.page_turn block @a ~ ~0.5 ~ 1 0.8