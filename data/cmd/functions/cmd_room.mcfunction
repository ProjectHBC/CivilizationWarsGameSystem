#マップ管理
execute as @s[tag=Admin] in game:experimental run tp @s[tag=Admin] 2 300 -3
tellraw @s[tag=Admin] {"text": "System -> cmd_roomにtpしました","color": "green"}

##権限エラー
tellraw @s[tag=!Admin] {"text": "System -> 運営タグを持っていないため実行できませんでした","color": "red"}
