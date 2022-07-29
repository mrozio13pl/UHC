#settings
execute if score UHC$settings uhc_border matches 100 run worldborder set 100
execute if score UHC$settings uhc_border matches 500 run worldborder set 500
execute if score UHC$settings uhc_border matches 1000 run worldborder set 1000
execute if score UHC$settings uhc_border matches 3000 run worldborder set 3000

execute if score UHC$settings uhc_naturalregen matches 1 run gamerule naturalRegeneration true
execute if score UHC$settings uhc_naturalregen matches 0 run gamerule naturalRegeneration false

execute if score UHC$settings uhc_speed matches 1 run effect give @a minecraft:speed 70 3 true
execute if score UHC$settings uhc_saturation matches 1 run effect give @a minecraft:saturation 1000 10 true
execute if score UHC$settings uhc_resistance matches 1 run effect give @a minecraft:resistance 1500 10 true

execute if score UHC$settings uhc_tools matches 1 run give @a stone_sword 1
execute if score UHC$settings uhc_tools matches 1 run give @a iron_pickaxe 1
execute if score UHC$settings uhc_tools matches 1 run give @a stone_axe 1
execute if score UHC$settings uhc_tools matches 1 run give @a stone_shovel 1
execute if score UHC$settings uhc_tools matches 1 run give @a stone_hoe 1
execute if score UHC$settings uhc_axe matches 1 run give @a golden_axe{Enchantments:[{id:"efficiency",lvl:15},{id:"vanishing_curse",lvl:1}],Damage:15} 1

execute if score UHC$settings uhc_food matches 1 run give @a cooked_porkchop 16
execute if score UHC$settings uhc_gap matches 1 run give @a golden_apple 1
execute if score UHC$settings uhc_iron matches 1 run give @a iron_block 1
execute if score UHC$settings uhc_book matches 1 run give @a book 1
execute if score UHC$settings uhc_tnt matches 1 run give @a tnt 2
execute if score UHC$settings uhc_fortunebook matches 1 run give @a enchanted_book{StoredEnchantments:[{id:"fortune",lvl:3}]} 1

gamerule keepInventory true
gamerule reducedDebugInfo true

# Warn / Info
schedule function stage:warn/stage2-1 900s

