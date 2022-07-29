tellraw @a {"text":"Deathmatch will start in 1 minute!","color":"red"}
execute positioned as @a run playsound block.stone_button.click_off ambient @a ~ ~ ~ 
schedule function stage:warn/dm2-5 30s