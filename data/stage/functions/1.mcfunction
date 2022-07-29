#timer
scoreboard objectives add UHC_Start_Timer_CountDown dummy
scoreboard players set UHC___Timer_CountDown UHC_Start_Timer_CountDown 0

#spread Leader
scoreboard players reset @a uhc_Leader
scoreboard players set @r uhc_Leader 1
spreadplayers 0 0 100000 100000 false @a[scores={uhc_Leader=1}]
execute as @p[scores={uhc_Leader=1}] at @s run worldborder center ~ ~
execute as @p[scores={uhc_Leader=1}] at @s run spawnpoint @a ~ ~ ~

#playerstuff
effect clear @a
gamemode survival @a
clear @a
effect give @a minecraft:instant_health 100 100
scoreboard players reset @a uhc_kills
scoreboard players set @a uhc_deaths 0
tp @a @p[scores={uhc_Leader=1}]
kill @e[type=!player]

#needed
gamerule announceAdvancements true
scoreboard objectives setdisplay sidebar uhc_deaths
advancement revoke @a everything
gamerule doInsomnia false
gamerule doImmediateRespawn true
gamerule mobGriefing true
gamerule doMobSpawning true
weather clear
time set 10

#effects
effect give @a slowness 10 100 true
effect give @a minecraft:jump_boost 10 255 true
effect give @a minecraft:blindness 5 4 true
effect give @a mining_fatigue 10 100 true

#deathmatch setup
execute positioned as @a run summon armor_stand ~ 200 ~ {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,CustomName:'{"text":"uhc_center"}'}

#recipes
recipe give @a crafting:arow
recipe give @a crafting:copper
recipe give @a crafting:gold
recipe give @a crafting:iron
recipe give @a crafting:kox
recipe give @a crafting:pig
recipe give @a crafting:potato
recipe give @a crafting:totem

#finish
kill @e[type=item]
scoreboard players reset @a uhc_start

#offline
scoreboard objectives add uhc_stage1 dummy
scoreboard players set @a uhc_stage1 1
scoreboard players set uhc$ uhc_stage1 1

scoreboard players reset @a uhc_Leader

#hp
scoreboard objectives add uhc_hp health
#alive
scoreboard objectives add uhc_alive dummy
