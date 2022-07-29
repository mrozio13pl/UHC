tellraw @a {"text":"PVP will start in 5 seconds!","color":"red"}
execute positioned as @a run playsound block.stone_button.click_off ambient @a ~ ~ ~ 
schedule function stage:warn/stage2-8 1s