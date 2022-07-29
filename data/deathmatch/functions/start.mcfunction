scoreboard players set @a[scores={uhc_deaths=..3}] uhc_deaths 2
tellraw @a {"text":"!------------------!\nDEATHMATCH\n!------------------!","color":"red"}
execute positioned as @e[type=armor_stand,name="uhc_center",limit=1] run fill ~-4 ~-3 ~-4 ~4 ~3 ~4 minecraft:bedrock hollow
execute positioned as @e[type=armor_stand,name="uhc_center",limit=1] run tp @a[gamemode=!spectator,gamemode=!creative] @e[type=armor_stand,name="uhc_center",limit=1]
kill @e[type=armor_stand,name="uhc_center"]
clear @a ender_pearl
execute positioned as @a run playsound entity.wither.spawn ambient @a ~ ~ ~