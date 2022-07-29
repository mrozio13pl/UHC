tellraw @a {"text":"PVP will start in 5 minutes!","color":"red"}
execute positioned as @a run playsound block.stone_button.click_off ambient @a ~ ~ ~ 
schedule function stage:warn/stage2-3 180s