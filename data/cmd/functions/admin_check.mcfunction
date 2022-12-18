##現在のAdminメンバーを確認
tellraw @s[tag=Admin] [{"text": "System -> [","color": "green"},{"selector": "@a[tag=Admin]","color": "red"},{"text": "]はAdminです。","color": "green"}]

##権限エラー
tellraw @s[tag=!Admin] {"text": "System -> 運営タグを持っていないため実行できませんでした","color": "red"}
