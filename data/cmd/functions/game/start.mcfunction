#> cmd:game/start
#
# ゲームを開始するためのコマンド(フェイルセーフ付き)
#
# @user

# ゲームを開始していいか確認(ゲーム状態が"Inactive"のときのみ実行可能)
    execute if data storage global: {Condition: "Inactive"} run tellraw @a[team=Admin] [{"text": "警告：ゲームを開始させようとしています。\n","color":"red"},{"text": ">> ゲームを開始する <<\n","color": "dark_red","bold": true,"hoverEvent": {"action": "show_text","contents": [{"text":"ゲームを開始します","color": "white"}]},"clickEvent": {"action": "run_command","value": "/function sys:game/fail_safe/start/"}}]

# ゲーム状態が"Active"の時は実行不可・エラーを返す
    execute if data storage global: {Condition: "Active"} run function sys:api/error_log {ErrorUniqueId: "ConditionError"}