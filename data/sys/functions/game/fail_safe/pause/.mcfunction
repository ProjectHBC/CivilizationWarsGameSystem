#> sys:game/fail_safe/pause/
#
# ゲームを一時停止するためのコマンド
#
# @within function cmd:game/pause

# ゲーム状態を一時停止させる
    data modify storage global: Condition set value "Neutral"

# プレイヤーを死なせないようにする
    #effect?

# ゲームを凍結させる(権限レベル3以上が必要です)
    tick freeze

# メッセージ
    tellraw @a [{"text": "System -> ","color": "green"},{"text": "ゲームを一時停止しました"}]