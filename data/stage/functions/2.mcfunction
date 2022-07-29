effect clear @a
worldborder set 30 1000

title @a subtitle {"text":"no more resistance","color":"gold"}
title @a title ["",{"text":"A","obfuscated":true,"color":"#FF3F61"},{"text":" PVP ","color":"#FF3F61"},{"text":"A","obfuscated":true,"color":"#FF3F61"}]

tellraw @a {"text":"!------------------!\nBorder is shrinking!\n!------------------!","color":"red"}

execute positioned as @a run playsound minecraft:entity.ender_dragon.ambient ambient @a ~ ~ ~

#offline

scoreboard objectives add uhc_stage2 dummy
scoreboard players set @a uhc_stage2 1
scoreboard players set uhc$ uhc_stage2 1

# Warn / Info
execute if score UHC$settings uhc_timetodeath matches 0 run schedule function stage:warn/dm2-1 3s
execute if score UHC$settings uhc_timetodeath matches 300 run schedule function stage:warn/dm2-1 300s
execute if score UHC$settings uhc_timetodeath matches 600 run schedule function stage:warn/dm2-1 600s
execute if score UHC$settings uhc_timetodeath matches 1200 run schedule function stage:warn/dm2-1 1200s