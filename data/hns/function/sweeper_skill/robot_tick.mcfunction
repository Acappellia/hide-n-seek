playsound block.beacon.power_select player @a ~ ~ ~ 0.5 2
execute on passengers run data modify entity @s Rotation[0] set from entity @n[type=zombie,tag=hns_robot] Rotation[0]
execute on passengers run data modify entity @s teleport_duration set value 2
kill @a[team=bug,distance=..1,gamemode=adventure]