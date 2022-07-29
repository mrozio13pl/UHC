#triggers
scoreboard players enable @a[gamemode=adventure] uhc_start
execute as @p[scores={uhc_start=1..}] at @s run function stage:1
scoreboard players enable @a[gamemode=spectator] uhc_end
execute as @p[scores={uhc_end=1..}] at @s run function stage:end
scoreboard players enable @a[gamemode=adventure] uhc_settings
execute as @p[scores={uhc_settings=1..}] at @s run function settings:open
scoreboard players enable @a uhc_uninstall
execute as @p[scores={uhc_uninstall=1..}] at @s run function uninstall:confirm
execute as @p[scores={uhc_uninstall=1..}] at @s run scoreboard players set @s uhc_uninstall 0
execute as @p[scores={uhc_confirm=1..}] at @s run function uninstall:check


# CountDown Setup
scoreboard players add $timer UHC_Start_Timer_CountDown 1

# CountDown Start
execute if score $timer UHC_Start_Timer_CountDown matches 1 run function stage:timer/1
execute if score $timer UHC_Start_Timer_CountDown matches 20 run xp set @a 9 levels
execute if score $timer UHC_Start_Timer_CountDown matches 40 run xp set @a 8 levels
execute if score $timer UHC_Start_Timer_CountDown matches 60 run xp set @a 7 levels
execute if score $timer UHC_Start_Timer_CountDown matches 80 run xp set @a 6 levels
execute if score $timer UHC_Start_Timer_CountDown matches 100 run function stage:timer/100
execute if score $timer UHC_Start_Timer_CountDown matches 120 run function stage:timer/120
execute if score $timer UHC_Start_Timer_CountDown matches 140 run function stage:timer/140
execute if score $timer UHC_Start_Timer_CountDown matches 160 run function stage:timer/160
execute if score $timer UHC_Start_Timer_CountDown matches 180 run function stage:timer/180
execute if score $timer UHC_Start_Timer_CountDown matches 200 run function stage:timer/200


#offline
execute as @a unless entity @s[scores={uhc_stage1=-2147483648..}] run scoreboard players set @s uhc_stage1 0
execute as @a unless entity @s[scores={uhc_stage2=-2147483648..}] run scoreboard players set @s uhc_stage2 0
execute if score uhc$ uhc_stage1 matches 1 run gamemode spectator @a[scores={uhc_stage1=..0}]
execute if score uhc$ uhc_stage1 matches 1 run tellraw @a[scores={uhc_stage1=0}] {"text":"You left during the game! Your effects have been reset!","color":"red"}
execute if score uhc$ uhc_stage1 matches 1 run tp @a[scores={uhc_stage1=..0}] @e[name="uhc_center",limit=1,type=armor_stand]
execute if score uhc$ uhc_stage1 matches 1 run scoreboard players set @a[scores={uhc_stage1=..0}] uhc_stage1 1
execute if score uhc$ uhc_stage2 matches 1 run effect clear @a[scores={uhc_stage1=..0}]
execute if score uhc$ uhc_stage2 matches 1 run tellraw @a[scores={uhc_stage2=..0}] {"text":"Game has already started! You are spectator now.","color":"red"}
execute if score uhc$ uhc_stage2 matches 1 run scoreboard players set @a[scores={uhc_stage2=..0}] uhc_stage2 1

# last man standing
execute if score uhc$ uhc_stage1 matches 1 run execute store result score uhc$alive uhc_alive if entity @a[gamemode=survival,scores={uhc_deaths=..2}]
execute if score uhc$alive uhc_alive matches 1 run function stage:restart

# win countdown
scoreboard players add uhc$win_countdown uhc_win_countdown 1 

# fireworks
execute if score uhc$win_countdown uhc_win_countdown matches -2147483648..2147483647 run function stage:fireworks