clear @s
give @s carrot_on_a_stick[item_name='"扫把"',lore=['[{"text":"右键清扫前方的范围","color": "gray"}]'],custom_model_data=1,attribute_modifiers=[\
{amount:-1,id:"sweeper_interact_block",type:"player.block_interaction_range",operation:"add_multiplied_base",slot:"mainhand"},\
{amount:-1,id:"sweeper_interact_entity",type:"player.entity_interaction_range",operation:"add_multiplied_base",slot:"mainhand"},\
],hide_additional_tooltip={}]
give @s splash_potion[potion_contents={custom_effects:[{id:"wither",duration:240,amplifier:1}],custom_color:6246980},item_name='"杀虫剂"'] 1
give @s golden_apple[custom_model_data=1,item_name='"粘虫板"',lore=['[{"text":"右键在脚下放置粘虫板","color": "gray"}]','[{"text":"左键粘虫板可回收","color": "gray"}]']]