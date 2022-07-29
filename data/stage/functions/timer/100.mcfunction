effect give @a invisibility 60 1 true
title @a title {"text":"5","color":"green"}
tellraw @a ["",{"text":"UHC starts in ","color":"yellow"},{"text":"5","color":"#37FF58"}]
xp set @a 5 levels
execute positioned as @a run playsound minecraft:entity.experience_orb.pickup ambient @a ~ ~ ~
