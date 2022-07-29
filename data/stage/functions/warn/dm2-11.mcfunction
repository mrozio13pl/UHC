tellraw @a {"text":"Deathmatch will start in 1 second!","color":"red"}
execute positioned as @a run playsound block.stone_button.click_off ambient @a ~ ~ ~ 
schedule function deathmatch:start 1s