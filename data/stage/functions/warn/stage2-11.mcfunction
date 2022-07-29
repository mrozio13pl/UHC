tellraw @a {"text":"PVP will start in 1 second!","color":"red"}
execute positioned as @a run playsound block.stone_button.click_off ambient @a ~ ~ ~ 
schedule function stage:2 1s