##分かりやすいゲーム起動と簡易システム
tellraw @a[tag=Admin] {"text": "System -> ゲームを起動します...","color": "green"}
##簡易システムのロード
execute if score 草原チーム team_number matches 1.. if score ジャングルチーム team_number matches 1.. run function game:system/experimental_prestart
execute if score 草原チーム team_number matches 1.. if score ジャングルチーム team_number matches 1.. run schedule function game:system/experimental_start 5s
##どちらのチームも1以上の時のみ実行、でないときは起動できない旨を伝える
##草原チームが0、ジャングルチームが1以上
execute if score 草原チーム team_number matches 0 if score ジャングルチーム team_number matches 1.. run tellraw @a[tag=Admin] {"text": "System -> 草原チームにプレイヤーが居ない為ゲームを開始できませんでした","color": "red"}
##草原チームが1以上、ジャングルチームが0
execute if score 草原チーム team_number matches 1.. if score ジャングルチーム team_number matches 0 run tellraw @a[tag=Admin] {"text": "System -> ジャングルチームにプレイヤーが居ない為ゲームを開始できませんでした","color": "red"}
##草原チームが0、ジャングルチームが0
execute if score 草原チーム team_number matches 0 if score ジャングルチーム team_number matches 0 run tellraw @a[tag=Admin] {"text": "System -> 両チームにプレイヤーが居ない為ゲームを開始できませんでした","color": "red"}
