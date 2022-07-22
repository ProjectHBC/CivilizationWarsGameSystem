##勝者チームに表示
##草原チームが勝利
execute if score ジャングルチーム team_number matches 0 run title @a title {"text":"草原チームの勝利","color":"green"}
execute if score ジャングルチーム team_number matches 0 run playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 1 1
##ジャングルチームが勝利
execute if score 草原チーム team_number matches 0 run title @a title {"text":"ジャングルチームの勝利","color":"gold"}
execute if score 草原チーム team_number matches 0 run playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 1 1

##ボスバーを削除
bossbar remove sys:begin

##勝者エフェクトとゲームモード変更
##草原チーム
effect clear @a[team=sougen]
effect give @a[team=sougen] minecraft:glowing 10000 0 true
effect give @a[team=sougen] minecraft:resistance 10000 255 true
effect give @a[team=sougen] minecraft:instant_health 1 255 true
effect give @a[team=sougen] minecraft:regeneration 10000 255 true
gamemode adventure @a[team=sougen]
##ジャングルチーム
effect clear @a[team=janguru]
effect give @a[team=janguru] minecraft:glowing 10000 0 true
effect give @a[team=janguru] minecraft:resistance 10000 255 true
effect give @a[team=janguru] minecraft:instant_health 1 255 true
effect give @a[team=janguru] minecraft:regeneration 10000 255 true
gamemode adventure @a[team=janguru]

##end - 30sec
tellraw @a "30秒後にゲームを終了し、ロビーにテレポートします"
schedule function game:system/end_game 30s
