#> cmd:game/play
#
# ゲームを開始するためのコマンド
#
# @user

# ゲーム状態が"Neutral"のときのみ実行可能
    execute if data storage global: {Condition: "Neutral"} run function sys:game/fail_safe/play/

# ゲーム状態が"Neutral"以外の時は実行不可・エラーを返す
    execute unless data storage global: {Condition: "Neutral"} run function sys:api/error_log {ErrorUniqueId: "ConditionError"}