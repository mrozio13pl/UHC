#actual scoreboard
scoreboard objectives add uhc_deaths deathCount {"text":"Deaths","bold":true,"color":"dark_red"}
scoreboard objectives add uhc_kills playerKillCount
scoreboard objectives add uhc_start trigger
scoreboard objectives add uhc_end trigger
scoreboard objectives add uhc_settings trigger
scoreboard objectives add uhc_uninstall trigger

###dummies
scoreboard objectives add uhc_Leader dummy
scoreboard objectives add uhc_chest dummy
scoreboard objectives add uhc_wins dummy {"text":"Wins","bold":true,"color":"gold"}
#for settings###################################
scoreboard objectives add uhc_defaults dummy

scoreboard objectives add uhc_border dummy
scoreboard objectives add uhc_timetodeath dummy
scoreboard objectives add uhc_ai dummy
scoreboard objectives add uhc_enchants dummy
scoreboard objectives add uhc_naturalregen dummy
scoreboard objectives add uhc_autosmelt dummy

scoreboard objectives add uhc_speed dummy
scoreboard objectives add uhc_saturation dummy
scoreboard objectives add uhc_resistance dummy

scoreboard objectives add uhc_food dummy
scoreboard objectives add uhc_gap dummy
scoreboard objectives add uhc_tools dummy
scoreboard objectives add uhc_axe dummy
scoreboard objectives add uhc_iron dummy
scoreboard objectives add uhc_book dummy
scoreboard objectives add uhc_tnt dummy
scoreboard objectives add uhc_fortunebook dummy

#detail
setworldspawn 0 255 0
gamerule reducedDebugInfo false
gamerule commandBlockOutput false
scoreboard objectives add uhc_uninstall_confirmation dummy
scoreboard players set uhc$uninstall uhc_uninstall_confirmation 0