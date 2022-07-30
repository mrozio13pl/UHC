scoreboard players set @a[scores={uhc_deaths=..3}] uhc_deaths 2
gamemode adventure @a[scores={uhc_deaths=..3}]
tellraw @a {"text":"PVP will start in 5 seconds! Good luck","color":"red"}
execute positioned as @e[type=armor_stand,name="uhc_center",limit=1] run setblock ~-12 ~-4 ~-12 minecraft:structure_block{mode:"LOAD",name:"deathmatch:deathmatch",posX:0,posY:0,posZ:0}
execute positioned as @e[type=armor_stand,name="uhc_center",limit=1] run setblock ~-12 ~-4 ~-11 minecraft:redstone_block
execute positioned as @e[type=armor_stand,name="uhc_center",limit=1] run tp @a[gamemode=!spectator,gamemode=!creative] @e[type=armor_stand,name="uhc_center",limit=1]
kill @e[type=armor_stand,name="uhc_center"]
clear @a ender_pearl
effect give @a resistance 5 10 true

schedule function deathmatch:init 5s