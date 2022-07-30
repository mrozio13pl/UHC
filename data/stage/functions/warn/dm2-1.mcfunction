tellraw @a {"text":"Deathmatch will start in 10 minutes!\n(When deathmatch starts, all ender pearls are going to be removed!)","color":"red"}
execute positioned as @a run playsound block.stone_button.click_off ambient @a ~ ~ ~ 
schedule function stage:warn/dm2-2 300s