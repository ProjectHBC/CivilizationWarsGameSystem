#> sys:game/manage/
#
# ディレクトリ以下のファイルを管理する、常時実行
#
# @within function sys:core/tick

# 呼び出し
    execute if data storage global: {Condition: "Active"} run function sys:game/manage/player_count/
    execute if data storage global: {Condition: "Active"} run function sys:game/manage/death/
    function sys:game/manage/admin/