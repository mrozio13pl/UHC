#Schedule Clear
schedule clear uninstall:reset

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

schedule clear stage:2
schedule clear deathmatch:start

#WorldBorder
worldborder set 30000000

#ScoreBoards
scoreboard objectives remove uhc_deaths
scoreboard objectives remove uhc_kills
scoreboard objectives remove uhc_start
scoreboard objectives remove uhc_end 
scoreboard objectives remove uhc_settings
scoreboard objectives remove uhc_menu
scoreboard objectives remove uhc_Leader 
scoreboard objectives remove uhc_chest 
scoreboard objectives remove uhc_wins
scoreboard objectives remove uhc_enchants 
scoreboard objectives remove uhc_naturalregen
scoreboard objectives remove uhc_border
scoreboard objectives remove uhc_timetodeath
scoreboard objectives remove uhc_ai
scoreboard objectives remove uhc_autosmelt
scoreboard objectives remove uhc_speed
scoreboard objectives remove uhc_saturation
scoreboard objectives remove uhc_resistance
scoreboard objectives remove uhc_food
scoreboard objectives remove uhc_gap
scoreboard objectives remove uhc_tools
scoreboard objectives remove uhc_axe
scoreboard objectives remove uhc_iron
scoreboard objectives remove uhc_book
scoreboard objectives remove uhc_tnt
scoreboard objectives remove uhc_fortunebook
scoreboard objectives remove uhc_nether
scoreboard objectives remove uhc_fullbright
scoreboard objectives remove uhc_defaults
scoreboard objectives remove uhc_stage1
scoreboard objectives remove uhc_stage2
scoreboard objectives remove uhc_alive
scoreboard objectives remove uhc_hp
scoreboard objectives remove uhc_win_countdown
scoreboard objectives remove UHC_Start_Timer_CountDown
scoreboard objectives remove uhc_uninstall
scoreboard objectives remove uhc_confirm
scoreboard objectives remove uhc_uninstall_confirmation

# Gamerules
gamerule reducedDebugInfo false
gamerule commandBlockOutput true
gamerule announceAdvancements true
gamerule doInsomnia true
gamerule doImmediateRespawn false
gamerule mobGriefing true
gamerule doMobSpawning true
gamerule keepInventory true

#UHC_CENTER
kill @e[name="uhc_center",type=armor_stand]

# Info
tellraw @a ["",{"text":"!------------------------!\nSuccessfully uninstalled ","color":"green"},{"text":"UHC","color":"yellow"},{"text":"\n"},{"text":"!------------------------!","color":"green"}]
execute positioned as @a run playsound block.stone_button.click_off ambient @a ~ ~ ~ 

# Disable
tellraw @a ["",{"text":"If datapack didn't disable itself, you have to disable it manually by typing ","color":"gray"},{"text":"/datapack disable <datapack filename>","color":"red","clickEvent":{"action":"suggest_command","value":"/datapack disable "}}]
datapack disable "file/UHC"