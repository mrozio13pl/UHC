tellraw @a {"text":"Deathmatch will start in 3 seconds!","color":"red"}
execute positioned as @a run playsound block.stone_button.click_off ambient @a ~ ~ ~ 
schedule function stage:warn/dm2-10 1s