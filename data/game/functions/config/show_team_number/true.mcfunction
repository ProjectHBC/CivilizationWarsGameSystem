##チーム人数をスコアボードで表示
execute as @s[tag=Admin] run scoreboard objectives setdisplay sidebar team_number
tellraw @a[tag=Admin] {"text": "System -> チーム人数をスコアボードで表示しました","color": "green"}
tellraw @a[tag=Admin] {"text": "警告:スコアボードは全プレイヤーに表示されています","color": "red","bold": true}

##権限エラー
tellraw @s[tag=!Admin] {"text": "System -> 運営タグを持っていないため実行できませんでした","color": "red"}
