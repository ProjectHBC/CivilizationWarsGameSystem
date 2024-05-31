#> sys:game/fail_safe/end/
#
# ゲームを終了するのに必要な処理
#
# @within function cmd:game/end

# TODO?
# Temp形式で書くぐらいだったらファイルをもっと分割してもいいかもしれない

#> 終了カウント
# @private
    #declare score_holder #EndTemp

# 終了カウントを加算
    scoreboard players add #EndTemp Temporary 1

# ゲーム終了アナウンス
    execute if score #EndTemp Temporary matches 1 run tellraw @a [{"text": "System -> ","color": "green"},{"text": "ゲームが終了しました！"}]

# データの計算
    execute if score #EndTemp Temporary matches 1 run function sys:game/fail_safe/end/calculation

# アナウンス
    execute if score #EndTemp Temporary matches 1 run function sys:game/fail_safe/end/announce

## 以下のコマンドはアナウンス終了後(このファイルが2回目に呼び出されたとき)に実行
# プレイヤーをロビーに戻す
    execute if score #EndTemp Temporary matches 2 run execute in minecraft:overworld as @a run tp 0 100.5 0

## 全ての処理が終わってから実行してください
# ゲームに関するデータを削除し、初期状態にする
    execute if score #EndTemp Temporary matches 2 run function sys:api/world_settings/init

# データリセット(できればapi/./initに入れたい)
    execute if score #EndTemp Temporary matches 2 run team empty TeamA
    execute if score #EndTemp Temporary matches 2 run team empty TeamB
    execute if score #EndTemp Temporary matches 2 run data modify storage global: WinnerTeam set value ""
    execute if score #EndTemp Temporary matches 2 run data modify storage global: Timer.Phase set value 0

    execute if score #EndTemp Temporary matches 2 run data modify storage global: Condition set value "Inactive"

# 終了カウント削除
    execute if score #EndTemp Temporary matches 2 run scoreboard players reset #EndTemp
