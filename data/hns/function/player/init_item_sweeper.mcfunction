clear @s
give @s carrot_on_a_stick[item_name='"扫把"',lore=['[{"text":"右键清扫前方的范围","color": "gray"}]'],custom_model_data=1,attribute_modifiers=[\
{amount:-1,id:"sweeper_interact_block",type:"player.block_interaction_range",operation:"add_multiplied_base",slot:"mainhand"},\
]]
give @s splash_potion[potion_contents={custom_effects:[{id:"wither",duration:100,amplifier:1}],custom_color:6246980},item_name='"杀虫剂"'] 1