##change rotation
data merge entity @s {interpolation_duration:1,start_interpolation:-1,transformation:[-996, 0, 87, 0, 0, 1000, 0, 500, -87, 0, -996, 0, 0, 0, 0, 1000]}
tag @s add shake_s1
schedule function hns:shake/2 2t replace
playsound minecraft:item.armor.equip_generic block @a ~ ~0.5 ~ 1 1
execute at @s run particle crit ~ ~0.5 ~ 0 0 0 0.2 10