##experimentalワールドのバリアブロックを設置
execute as @s[tag=Admin] in game:experimental run fill 0 100 -1 4 104 -5 minecraft:barrier hollow
execute as @s[tag=Admin] in game:experimental run fill 0 100 1 4 104 5 minecraft:barrier hollow
tellraw @s[tag=Admin] {"text": "System -> experimentalワールドのバリアブロックを設置しました","color": "green"}

##権限エラー
tellraw @s[tag=!Admin] {"text": "System -> 運営タグを持っていないため実行できませんでした","color": "red"}
