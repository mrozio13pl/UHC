tellraw @s ["",{"text":">> ","color":"dark_gray"},{"text":"START GAME","color":"red","clickEvent":{"action":"run_command","value":"/function stage:1"},"hoverEvent":{"action":"show_text","value":{"text":"Starts the game\nAll players are going to be teleported to a random location","color":"yellow"}}},{"text":" | ","color":"dark_gray"},{"text":"SETTINGS","color":"red","clickEvent":{"action":"run_command","value":"/function settings:open"},"hoverEvent":{"action":"show_text","value":{"text":"Opens UHC Settings","color":"yellow"}}},{"text":" | ","color":"dark_gray"},{"text":"END GAME","color":"red","clickEvent":{"action":"run_command","value":"/function stage:end"},"hoverEvent":{"action":"show_text","value":{"text":"Ends the game\nAll players are going to be teleported to spawn","color":"yellow"}}},{"text":" <<","color":"dark_gray"}]
scoreboard players set @s uhc_menu 0
tag @s add triggers_permission