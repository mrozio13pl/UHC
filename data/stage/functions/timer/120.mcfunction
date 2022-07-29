title @a title {"text":"4","color":"green"}
tellraw @a ["",{"text":"UHC starts in ","color":"yellow"},{"text":"4","color":"#37FF58"}]
xp set @a 4 levels
execute positioned as @a run playsound minecraft:entity.experience_orb.pickup ambient @a ~ ~ ~
