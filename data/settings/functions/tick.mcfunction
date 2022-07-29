# chest death
execute as @a[scores={uhc_deaths=3..5}] run scoreboard players set @s uhc_chest 1
execute as @p[scores={uhc_chest=1}] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,Marker:1b,CustomName:'{"text":"UHCdeath"}',CustomNameVisible:1b}
execute as @p[scores={uhc_chest=1}] run function deathchest:moveitems
# Game Over
gamemode spectator @a[scores={uhc_deaths=3..5}]
title @a[scores={uhc_deaths=3..5}] times 0 100 20
title @a[scores={uhc_deaths=3..5}] title {"text":"GAME OVER","color":"#FF2045"}
title @a[scores={uhc_deaths=3..5}] subtitle {"text":"You lost!","color":"gray"}
execute if entity @a[scores={uhc_deaths=3..5}] positioned as @a[scores={uhc_deaths=3..5}] run summon minecraft:lightning_bolt ~ -80 ~
execute if entity @a[scores={uhc_deaths=3..5}] run execute positioned as @a run playsound minecraft:entity.wither.death ambient @a ~ ~ ~
execute if entity @a[scores={uhc_deaths=3..5}] run tellraw @a ["",{"color":"red","selector":"@a[scores={uhc_deaths=3..7}]"},{"text":" has been eliminated!","color":"red"}]
scoreboard players set @a[scores={uhc_deaths=3..5}] uhc_deaths 10

# ai
execute if score UHC$settings uhc_ai matches 1 run data merge entity @e[sort=random,limit=1,nbt={NoAI:1b}] {NoAI:0b}
execute if score UHC$settings uhc_ai matches 1 run data merge entity @e[sort=random,limit=1,nbt={NoAI:1b}] {NoAI:0b}
execute if score UHC$settings uhc_ai matches 0 run data merge entity @e[sort=random,limit=1,nbt=!{NoAI:1b}] {NoAI:1b}
execute if score UHC$settings uhc_ai matches 0 run data merge entity @e[sort=random,limit=1,nbt=!{NoAI:1b}] {NoAI:1b}
# ench
execute if score UHC$settings uhc_enchants matches 1 run enchant @a protection 2
execute if score UHC$settings uhc_enchants matches 1 run enchant @a sharpness 1
execute if score UHC$settings uhc_enchants matches 1 run enchant @a efficiency 4
# autosmelt
execute if score UHC$settings uhc_autosmelt matches 1 run function smelting:smelt
# ex unless
execute unless score UHC$settings uhc_defaults matches 1 run function settings:defaults