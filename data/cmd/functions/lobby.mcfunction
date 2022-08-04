#lobbyにテレポートします
execute at @a[tag=Admin] in minecraft:overworld run tp 10000 100 0
tellraw @s[tag=Admin] {"text": "System -> lobbyにtpしました","color": "green"}
tellraw @s[tag=!Admin] {"text": "System -> 運営タグを持っていないため実行できませんでした","color": "red"}
