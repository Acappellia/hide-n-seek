scoreboard players add #disinfect_cd hns 1
execute unless score #disinfect_cd hns matches 0 run return 1

execute as @a[team=sweeper] run give @s enchanted_golden_apple[custom_model_data=1,item_name='"高温消毒已就绪"',lore=['[{"text":"右键启动当前房间的高温消毒","color": "gray"}]','[{"text":"使用后需等待冷却","color": "gray"}]']]