scoreboard players set uhc$uninstall uhc_uninstall_confirmation 0
scoreboard objectives remove uhc_confirm
tellraw @a {"text":"Uninstallation abandoned!","color":"gray"}
execute positioned as @a run playsound block.stone_button.click_off ambient @a ~ ~ ~