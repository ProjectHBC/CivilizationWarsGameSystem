#lobbyにテレポートします
execute at @a[tag=Admin] in minecraft:overworld run tp 10000 100 0
tellraw @s[tag=Admin] {"text": "System -> lobbyにtpしました","color": "green"}
