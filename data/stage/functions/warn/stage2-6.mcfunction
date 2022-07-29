tellraw @a {"text":"PVP will start in 10 seconds!","color":"red"}
execute positioned as @a run playsound block.stone_button.click_off ambient @a ~ ~ ~ 
schedule function stage:warn/stage2-7 5s