title @a title {"text":"2","color":"green"}
tellraw @a ["",{"text":"UHC starts in ","color":"yellow"},{"text":"2","color":"#37FF58"}]
xp set @a 2 levels
execute positioned as @a run playsound minecraft:entity.experience_orb.pickup ambient @a ~ ~ ~
