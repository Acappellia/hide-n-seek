advancement revoke @s only hns:interact_sticker

execute as @e[distance=..10,type=interaction,tag=hns_sticker] if data entity @s attack run tag @s add interact_target

execute as @s[team=sweeper] as @n[distance=..10,type=interaction,tag=interact_target] at @s run function hns:sweeper_skill/summon_sticker/remove_sticker
execute as @s[team=sweeper] run give @s golden_apple[custom_model_data=1,item_name='"粘虫板"',lore=['[{"text":"右键在脚下放置粘虫板","color": "gray"}]','[{"text":"左键粘虫板可回收","color": "gray"}]']]

execute as @n[distance=..10,type=interaction,tag=interact_target] run function hns:sweeper_skill/summon_sticker/reset_status