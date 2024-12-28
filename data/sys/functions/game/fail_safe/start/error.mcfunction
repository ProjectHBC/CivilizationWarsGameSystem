#> sys:game/fail_safe/start/error
#
# エラー用の臨時処理
#
# @within function sys:game/fail_safe/start/

# エラーログを流し、一時スコアをリセット
    function sys:api/error_log {"ErrorUniqueId": ""}
    scoreboard players reset #StartTemp Temporary