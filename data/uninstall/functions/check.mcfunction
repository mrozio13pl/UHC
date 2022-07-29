execute if score uhc$uninstall uhc_uninstall_confirmation matches 1 run function uninstall:uninstall
execute if score uhc$uninstall uhc_uninstall_confirmation matches 0 run tellraw @a {"text":"You can't confirm anything right now!","color":"red"}
execute if score uhc$uninstall uhc_uninstall_confirmation matches 0 run scoreboard objectives remove uhc_confirm