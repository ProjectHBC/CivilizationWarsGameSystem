#> sys:game/fail_safe/start/
#
# ゲームを開始するのに必要な処理
#
# @within function cmd:game/start

#> 開始カウント
# @private
    #declare score_holder #StartTemp

# 開始カウントを加算
    scoreboard players add #StartTemp Temporary 1

# 準備、エラーがあった場合は実行を中止し、エラーを返却する
    execute if score #StartTemp Temporary matches 1 run function sys:game/fail_safe/start/prepare

# エラーが発生していないか確認、あった場合はエラーメッセージを表示、なかった場合はスルー
    execute if score #StartTemp Temporary matches 1 if data storage api: {Error:{Id: ""}} run scoreboard players add #StartTemp Temporary 1
    execute if score #StartTemp Temporary matches 1 unless data storage api: {Error:{Id: ""}} run function sys:api/error_log {"ErrorUniqueId": ""}
    execute if score #StartTemp Temporary matches 1 unless data storage api: {Error:{Id: ""}} run scoreboard players reset #StartTemp Temporary

## 全てのエラーがない状態で以下のコマンドを実行してください
# ゲーム状態を"Active"に変更する
    execute if score #StartTemp Temporary matches 2 run data modify storage global: Condition set value "Active"

# ワールド/プレイヤーの設定ファイルをロードする
    execute if score #StartTemp Temporary matches 2 run function sys:game/manage/world

# 開始カウント削除
    execute if score #StartTemp Temporary matches 2 run scoreboard players reset #StartTemp