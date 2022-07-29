title @a title {"text":"1","color":"green"}
tellraw @a ["",{"text":"UHC starts in ","color":"yellow"},{"text":"1","color":"#37FF58"}]
xp set @a 1 levels
execute positioned as @a run playsound minecraft:entity.experience_orb.pickup ambient @a ~ ~ ~
