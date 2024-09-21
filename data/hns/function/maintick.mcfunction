gamemode adventure @a[team=bug,tag=!bug_dead]
gamemode spectator @a[team=spec]

execute if score #game_status hns matches 0 run effect give @a resistance 10 9 true
execute if score #game_status hns matches 0 run team join bug @a[team=]

effect give @a saturation infinite 0 true
effect clear @a[team=sweeper] wither

execute as @a[scores={hns_atk=1..}] at @s run function hns:atk/atk
execute as @a[scores={hns_summon=1..}] at @s run function hns:bug_skill/summon_trash/summon
#execute as @a[scores={hns_sticker_use=1..}] at @s run function hns:sweeper_skill/summon_sticker/summon
execute as @a[scores={hns_sticker_time=1..}] run attribute @s generic.jump_strength modifier remove sticker
execute as @e[type=zombie,tag=hns_robot] at @s run function hns:sweeper_skill/robot_tick


execute as @a[team=bug] run function hns:bug_skill/tick

execute unless score #game_status hns matches 0 unless score @s hns_round = #game_round hns run function hns:player/rejoin

execute as @e[type=interaction,tag=hns_sticker] at @s run function hns:sweeper_skill/sticker/tick

execute if score #game_status hns matches 1 run function hns:game/tick_1
execute if score #game_status hns matches 2 run function hns:game/tick_2

execute as @a[team=bug] run item replace entity @s armor.head with heart_of_the_sea[attribute_modifiers=[\
{amount:-10,id:"bug_health",type:"generic.max_health",operation:"add_value",slot:"head"},\
{amount:-0.7,id:"bug_scale",type:"generic.scale",operation:"add_multiplied_base",slot:"head"},\
{amount:-0.7,id:"bug_step",type:"generic.step_height",operation:"add_multiplied_base",slot:"head"},\
{amount:-0.5,id:"bug_gravity",type:"generic.gravity",operation:"add_multiplied_base",slot:"head"},\
{amount:-0.3,id:"bug_jump",type:"generic.jump_strength",operation:"add_multiplied_base",slot:"head"},\
{amount:-1,id:"bug_interact_entity",type:"player.entity_interaction_range",operation:"add_multiplied_base",slot:"head"},\
{amount:-1,id:"bug_interact_block",type:"player.block_interaction_range",operation:"add_multiplied_base",slot:"head"},\
],hide_tooltip={},enchantments={binding_curse:1},custom_model_data=5015]
execute as @a[team=sweeper] run item replace entity @s armor.head with warped_button[attribute_modifiers=[\
{amount:1,id:"sweeper_scale",type:"generic.knockback_resistance",operation:"add_value",slot:"head"},\
],hide_tooltip={},enchantments={binding_curse:1}]
execute as @a[team=spec] run item replace entity @s armor.head with air

execute as @a[team=bug] run item replace entity @s armor.chest with elytra[unbreakable={},enchantments={binding_curse:1},hide_tooltip={}]
execute as @a[team=!bug] run item replace entity @s armor.chest with air