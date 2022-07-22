#最後に読み込まれる(30sカウント後)
##勝者エフェクトを削除
effect clear @a[team=sougen]
effect clear @a[team=janguru]

##持ち物削除
execute at @a[team=sougen] in game:experimental run clear @a[team=sougen]
execute at @a[team=janguru] in game:experimental run clear @a[team=janguru]

##チームから参加者を空にする
team empty sougen
team empty janguru

##全員をロビーに戻す
execute as @a at @a in minecraft:overworld run tp 10000 100.5 0

##管理者通知
tellraw @a[tag=Admin] {"text": "System -> 全プレイヤーをロビーに招集しました","color": "green"}
tellraw @a[tag=Admin] [{"text": "System -> ","color": "green"},{"text": "サーバー管理者はゲームを再構築し、サーバーを再起動してください"}]
tellraw @a[tag=Admin] {"text": ""}
tellraw @a[tag=Admin] {"text": "≪サーバーを停止≫","color": "dark_red","hoverEvent": {"action": "show_text","value": "警告:自動再起動が有効でない場合\nサーバーは再起動されず停止されます"},"clickEvent": {"action": "run_command","value": "/stop"}}
tellraw @a[tag=Admin] {"text": ""}
