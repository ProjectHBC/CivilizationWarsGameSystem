#> sys:game/fail_safe/play/
#
# ゲームを再開するためのコマンド
#
# @within function cmd:game/play

# ゲーム状態を再開させる
    data modify storage global: Condition set value "Active"

# プレイヤーを死なせないようにする
    #effect clear?

# ゲームを解凍させる(権限レベル3以上が必要です)
    tick unfreeze

# メッセージ
    tellraw @a [{"text": "System -> ","color": "green"},{"text": "ゲームを再開しました"}]