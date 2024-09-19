advancement revoke @s only hns:using_golden_apple

execute if score @s hns_sticker_usecd matches ..-1 run return -1
scoreboard players set @s hns_sticker_usecd -20

execute unless data entity @s {OnGround:1b} run return -1

clear @s golden_apple 1
summon interaction ~ ~ ~ {Tags:["hns_sticker"],width:3,height:0.2,Passengers:[{id:item_display,transformation:[-2,0,0,0,0,2,0,1,0,0,-2,0,0,0,0,2],item:{id:"firework_star",components:{custom_model_data:5}}}]}
playsound item.book.page_turn block @a ~ ~0.5 ~ 1 0.8