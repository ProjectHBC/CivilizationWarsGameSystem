#ベースシステム削除

##タイマー用
scoreboard objectives remove timer
scoreboard objectives remove minute
scoreboard objectives remove second
##計算用
scoreboard objectives remove tmpTime
scoreboard objectives remove division_60
scoreboard objectives remove 60
scoreboard objectives remove team_number
#scoreboard objectives remove team_number_0
#scoreboard objectives remove sougen_member
#scoreboard objectives remove janguru_member
###numberに変更する？それとも使わない？
scoreboard objectives remove deathcount
#scoreboard objectives remove lastcount
scoreboard objectives remove victory_team

##ボスバーを削除
bossbar remove sys:timer
bossbar remove sys:begin

##チームを削除
team remove sougen
team remove janguru

##削除メッセージ
tellraw @a[tag=Admin] {"text": "System -> ベースシステムの削除しました","color": "green"}
tellraw @a[tag=Admin] {"text": "警告:ベースシステムを再構築するにはリロードしてください","color": "red","bold": true}
tellraw @a[tag=Admin] {"text": ""}
tellraw @a[tag=Admin] {"text": "≪reload≫","color": "dark_red","hoverEvent": {"action": "show_text","value": "警告:/reloadを実行します\nサーバーラグが発生する可能性があります"},"clickEvent": {"action": "run_command","value": "/reload"}}
tellraw @a[tag=Admin] {"text": ""}
