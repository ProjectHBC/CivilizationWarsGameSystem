##タイマーを停止させ、壁を壊す

#タイマーストップの通知
tellraw @a[tag=Admin] ["",{"text":"System -> タイマーを停止させ、壁を壊しました","color":"green"}]

#タイマーを１秒にセットして止める
scoreboard players set @e[tag=Timekeeper,limit=1] timer 1
