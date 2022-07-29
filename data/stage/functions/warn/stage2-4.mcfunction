tellraw @a {"text":"PVP will start in 1 minute!","color":"red"}
execute positioned as @a run playsound block.stone_button.click_off ambient @a ~ ~ ~ 
schedule function stage:warn/stage2-5 30s