##参加プレイヤーのチームを表示
#ハイフンは50個
tellraw @s[tag=Admin] [{"text": "--------------------------------------------------","color": "gray"}]
tellraw @s[tag=Admin] [{"text": "草原チーム : ","color":"green"},{"text": "[","color": "white"},{"selector":"@e[team=sougen]"},{"text": "]","color": "white"}]
tellraw @s[tag=Admin] [{"text": "ジャングルチーム : ","color":"gold"},{"text": "[","color": "white"},{"selector":"@e[team=janguru]"},{"text": "]","color": "white"}]
tellraw @s[tag=Admin] [{"text": "草原チーム","color": "green"},{"text": "のプレイヤー数: ","color": "white"},{"score":{"name":"草原チーム","objective":"team_number"}},{"text": " , ","color": "white"},{"text": "ジャングルチーム","color": "gold"},{"text": "のプレイヤー数: ","color": "white"},{"score":{"name":"ジャングルチーム","objective":"team_number"}}]
tellraw @s[tag=Admin] [{"text": "--------------------------------------------------","color": "gray"}]

##権限エラー
tellraw @s[tag=!Admin] {"text": "System -> 運営タグを持っていないため実行できませんでした","color": "red"}
