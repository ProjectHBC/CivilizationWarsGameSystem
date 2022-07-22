##タイマーの処理

##時間を減らす
scoreboard players remove @e[tag=Timekeeper] timer 1

##タイマーの表示（アクションバー）
#title @a actionbar ["",{"text":"残り: ","color":"red","bold":true},{"score":{"name":"@e[tag=Timekeeper]","objective":"timer"},"color":"red","bold":true},{"text":" 秒","color":"red","bold":true}]

##分、秒を計算(timerを直接計算すると値が変化してしまうのでいったん避難させている)
scoreboard players operation @e[tag=Timekeeper] tmpTime = @e[tag=Timekeeper] timer
execute store result score @e[tag=Timekeeper] minute run scoreboard players operation @e[tag=Timekeeper] tmpTime /= @e[tag=Timekeeper] division_60
scoreboard players operation @e[tag=Timekeeper] tmpTime = @e[tag=Timekeeper] timer
execute store result score @e[tag=Timekeeper] second run scoreboard players operation @e[tag=Timekeeper] tmpTime %= @e[tag=Timekeeper] division_60

##タイマー表示(ボスバー)
bossbar set sys:timer name ["",{"text":"準備時間: ","color":"red","bold":true},{"score":{"name":"@e[tag=Timekeeper,limit=1]","objective":"minute"},"color":"red"},{"text":":","color":"red","bold":true},{"score":{"name":"@e[tag=Timekeeper,limit=1]","objective":"second"},"color":"red"}]
execute store result bossbar sys:timer value run scoreboard players get @e[tag=Timekeeper,limit=1] timer

##残り時間があったら再帰
execute unless entity @e[tag=Timekeeper,scores={timer=0}] run schedule function game:system/count_timer 1s

##壁を破壊 ##システム変更で削除
#function game:system/wall/break_fill_wall

##壁の崩壊時の表示
execute if entity @e[tag=Timekeeper,scores={timer=0}] run function game:system/break_count_timer
