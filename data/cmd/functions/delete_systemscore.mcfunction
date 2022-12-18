#ベースシステム削除

##タイマー用
execute as @s[tag=Admin] run scoreboard objectives remove timer
execute as @s[tag=Admin] run scoreboard objectives remove minute
execute as @s[tag=Admin] run scoreboard objectives remove second
##計算用
execute as @s[tag=Admin] run scoreboard objectives remove tmpTime
execute as @s[tag=Admin] run scoreboard objectives remove division_60
execute as @s[tag=Admin] run scoreboard objectives remove 60
execute as @s[tag=Admin] run scoreboard objectives remove team_number
#execute as @s[tag=Admin] run scoreboard objectives remove team_number_0
#execute as @s[tag=Admin] run scoreboard objectives remove sougen_member
#execute as @s[tag=Admin] run scoreboard objectives remove janguru_member
###numberに変更する？それとも使わない？
execute as @s[tag=Admin] run scoreboard objectives remove deathcount
#execute as @s[tag=Admin] run scoreboard objectives remove lastcount
execute as @s[tag=Admin] run scoreboard objectives remove victory_team
###スニーク時間を検知
#execute as @a[tag=Admin] run scoreboard objectives remove sneak_time

##ボスバーを削除
execute as @s[tag=Admin] run bossbar remove sys:timer
execute as @s[tag=Admin] run bossbar remove sys:begin

##チームを削除
execute as @s[tag=Admin] run team remove sougen
execute as @s[tag=Admin] run team remove janguru

##削除メッセージ
tellraw @a[tag=Admin] {"text": "System -> ベースシステムの削除しました","color": "green"}
tellraw @a[tag=Admin] {"text": "警告:ベースシステムを再構築するにはリロードしてください","color": "red","bold": true}
tellraw @a[tag=Admin] {"text": ""}
tellraw @a[tag=Admin] {"text": "≪reload≫","color": "dark_red","hoverEvent": {"action": "show_text","value": "警告:/reloadを実行します\nサーバーラグが発生する可能性があります"},"clickEvent": {"action": "run_command","value": "/reload"}}
tellraw @a[tag=Admin] {"text": ""}

##権限エラー
tellraw @s[tag=!Admin] {"text": "System -> 運営タグを持っていないため実行できませんでした","color": "red"}
