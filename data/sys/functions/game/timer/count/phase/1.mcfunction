#> sys:game/timer/count/phase/1
#
# 壁崩壊後にカウントアップ(フェーズ1 - 戦闘フェーズ)
#
# @within function sys:game/timer/count/

# 時間を増やす
    scoreboard players add #Timer Global 1

# 秒数を分秒に変換する
    scoreboard players operation #TimerTemp Temporary = #Timer Global
    execute store result score #TimerMinute Global run scoreboard players operation #TimerTemp Temporary /= #60 Constant
    scoreboard players operation #TimerTemp Temporary = #Timer Global
    execute store result score #TimerSecond Global run scoreboard players operation #TimerTemp Temporary %= #60 Constant