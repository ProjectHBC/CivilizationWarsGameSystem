#> cmd:game/end
#
# ゲームを終了するためのコマンド(フェイルセーフ付き)
#
# @user

# ゲームを終了していいか確認(ゲーム状態が"Active"のときのみ実行可能)
    execute if data storage global: {Condition: "Active"} run tellraw @a[team=Admin] [{"text": "警告：ゲームを終了させようとしています。\n","color":"red"},{"text": ">> ゲームを終了する <<\n","color": "dark_red","bold": true,"hoverEvent": {"action": "show_text","contents": [{"text":"ゲームを終了します","color": "white"}]},"clickEvent": {"action": "run_command","value": "/function sys:game/fail_safe/end/"}}]

# ゲーム状態が"Active"の時以外は実行不可・エラーを返す
    execute unless data storage global: {Condition: "Active"} run function sys:api/error_log {ErrorUniqueId: "ConditionError"}