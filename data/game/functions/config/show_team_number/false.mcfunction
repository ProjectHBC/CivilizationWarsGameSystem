##チーム人数をスコアボードで非表示
execute as @s[tag=Admin] run scoreboard objectives setdisplay sidebar
tellraw @a[tag=Admin] {"text": "System -> チーム人数をスコアボードで非表示しました","color": "green"}

##権限エラー
tellraw @s[tag=!Admin] {"text": "System -> 運営タグを持っていないため実行できませんでした","color": "red"}
