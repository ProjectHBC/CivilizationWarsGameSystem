#> cmd:game/pause
#
# ゲームを一時停止するためのコマンド
#
# @user

# ゲーム状態が"Active"のときのみ実行可能
    execute if data storage global: {Condition: "Active"} run function sys:game/fail_safe/pause/

# ゲーム状態が"Active"以外の時は実行不可・エラーを返す
    execute unless data storage global: {Condition: "Active"} run function sys:api/error_log {ErrorUniqueId: "ConditionError"}