title @a title {"text":"3","color":"green"}
tellraw @a ["",{"text":"UHC starts in ","color":"yellow"},{"text":"3","color":"#37FF58"}]
xp set @a 3 levels
execute positioned as @a run playsound minecraft:entity.experience_orb.pickup ambient @a ~ ~ ~
