#> sys:game/timer/count/phase/0
#
# 壁崩壊前にカウントダウン(フェーズ0 - 準備フェーズ)
#
# @within function sys:game/timer/count/

# 時間を減らす
    scoreboard players remove #Timer Global 1

# 秒数を分秒に変換する
    scoreboard players operation #TimerTemp Temporary = #Timer Global
    execute store result score #TimerMinute Global run scoreboard players operation #TimerTemp Temporary /= #60 Constant
    scoreboard players operation #TimerTemp Temporary = #Timer Global
    execute store result score #TimerSecond Global run scoreboard players operation #TimerTemp Temporary %= #60 Constant

# ボスバーにタイマーを表示させる
    bossbar set global:timer name [{"text": "準備時間: ","color": "red","bold": true},{"score": {"name": "#TimerMinute","objective": "Global"}},{"text": ":","bold": true},{"score": {"name": "#TimerSecond","objective": "Global"}}]
    execute store result bossbar global:timer value run scoreboard players get #Timer Global
    bossbar set global:timer players @a