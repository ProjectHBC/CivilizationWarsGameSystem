##タイマーを停止させ、壁を壊す

##タイマーストップの通知
tellraw @a[tag=Admin] {"text":"System -> タイマーを停止させ、壁を壊しました","color":"green"}

##タイマーを１秒にセットして止める
execute as @s[tag=Admin] run scoreboard players set @e[tag=Timekeeper,limit=1] timer 1

##権限エラー
tellraw @s[tag=!Admin] {"text": "System -> 運営タグを持っていないため実行できませんでした","color": "red"}
