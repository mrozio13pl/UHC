tellraw @a ["",{"text":"Are you sure you want to uninstall UHC?","bold":true,"color":"red"},{"text":" All stats will be removed and some gamerules will be changed back to default!\nTo confirm this, type ","color":"gray"},{"text":"/trigger uhc_confirm ","color":"yellow"},{"text":"in 15 seconds","color":"gray"}]
execute positioned as @a run playsound block.anvil.land ambient @a ~ ~ ~
scoreboard objectives add uhc_confirm trigger
scoreboard players enable @a uhc_confirm
scoreboard players set uhc$uninstall uhc_uninstall_confirmation 1
schedule function uninstall:reset 15s