scoreboard players reset @a uhc_end
scoreboard players reset @a uhc_stage1
scoreboard players reset @a uhc_hp
scoreboard players reset uhc_win_countdown
scoreboard objectives remove UHC_Start_Timer_CountDown
scoreboard objectives remove uhc_stage1
scoreboard objectives remove uhc_hp
scoreboard objectives remove uhc_win_countdown
worldborder set 30000000
weather clear
effect clear @a
gamemode adventure @a
gamerule mobGriefing false
gamerule doMobSpawning false
gamerule doImmediateRespawn false
effect give @a resistance 1000000 10 true
effect give @a speed 1000000 1 true
effect give @a saturation 1000000 1 true
clear @a
scoreboard objectives setdisplay sidebar uhc_wins

schedule clear stage:2
schedule clear deathmatch:start

kill @e[type=armor_stand,name="uhc_center"]
teleport @a 0 255 0

tellraw @a {"text":"UHC has ended!","color":"yellow"}
tellraw @a ["",{"text":"[","color":"yellow"},{"text":"Setup","color":"gold","clickEvent":{"action":"run_command","value":"/function slow:slowsetup"}},{"text":"] [","color":"yellow"},{"text":"Start Game","color":"gold","clickEvent":{"action":"run_command","value":"/function slow:slowstart"}},{"text":"] [","color":"yellow"},{"text":"Stop Game","color":"gold","clickEvent":{"action":"run_command","value":"/function slow:slowstop"}},{"text":"] [","color":"yellow"},{"text":"Settings","color":"gold","clickEvent":{"action":"run_command","value":"/function settings:open"}},{"text":"]","color":"yellow"}]

execute positioned as @a run playsound block.stone_button.click_off ambient @a ~ ~ ~ 

# Warn / Info CLEAR

schedule clear stage:warn/stage2-1
schedule clear stage:warn/stage2-2
schedule clear stage:warn/stage2-3
schedule clear stage:warn/stage2-4
schedule clear stage:warn/stage2-5
schedule clear stage:warn/stage2-6
schedule clear stage:warn/stage2-7
schedule clear stage:warn/stage2-8
schedule clear stage:warn/stage2-9
schedule clear stage:warn/stage2-10
schedule clear stage:warn/stage2-11

schedule clear stage:warn/dm2-1
schedule clear stage:warn/dm2-2
schedule clear stage:warn/dm2-3
schedule clear stage:warn/dm2-4
schedule clear stage:warn/dm2-5
schedule clear stage:warn/dm2-6
schedule clear stage:warn/dm2-7
schedule clear stage:warn/dm2-8
schedule clear stage:warn/dm2-9
schedule clear stage:warn/dm2-10
schedule clear stage:warn/dm2-11