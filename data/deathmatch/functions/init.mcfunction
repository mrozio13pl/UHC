gamemode survival @a[scores={uhc_deaths=..3}]
execute positioned as @a run playsound entity.wither.spawn ambient @a ~ ~ ~
tellraw @a {"text":"!------------------!\nDEATHMATCH has started!\n!------------------!","color":"red"}