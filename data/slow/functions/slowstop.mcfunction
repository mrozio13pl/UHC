schedule clear slow:slowstop
tellraw @a {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n "}
tellraw @a ["",{"text":"[","color":"yellow"},{"text":"Setup","color":"gold","clickEvent":{"action":"run_command","value":"/function slow:slowsetup"}},{"text":"] [","color":"yellow"},{"text":"Start Game","color":"gold","clickEvent":{"action":"run_command","value":"/function slow:slowstart"}},{"text":"] [","color":"yellow"},{"text":"Stop Game","color":"gold","clickEvent":{"action":"run_command","value":"/function slow:slowstop"}},{"text":"] [","color":"yellow"},{"text":"Settings","color":"gold","clickEvent":{"action":"run_command","value":"/function settings:open"}},{"text":"]","color":"yellow"}]
schedule function stage:end 1s