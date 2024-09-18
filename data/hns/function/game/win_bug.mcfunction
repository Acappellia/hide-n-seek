scoreboard players set #game_status hns 3

bossbar set game_cd visible false

title @a title [{"text":"爬虫组","color": "red"},{"text":" 胜利！","color": "gold"}]

execute as @a[team=sweeper] at @s run playsound item.goat_horn.sound.4 player @s ~ ~ ~ 1 1
execute as @a[tag=!sweeper] at @s run playsound item.goat_horn.sound.1 player @s ~ ~ ~ 1 0.8