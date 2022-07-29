tellraw @a {"text":"PVP will start in 2 seconds!","color":"red"}
execute positioned as @a run playsound block.stone_button.click_off ambient @a ~ ~ ~ 
schedule function stage:warn/stage2-11 1s