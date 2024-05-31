#> sys:core/load
#
# データパックがロードされたときに呼び出されるファイル
#
# @within tag/function minecraft:load

# test
    tellraw @a "loaded!"

# スタートメニューを管理者にのみ通知
    execute as @a[team=Admin] run function sys:core/assets/start_menu

# バージョンが変更されていた場合、もしくは存在しない場合、buildupをロードする
    #execute unless data storage global: {Version:"v0.2-beta"} run function sys:core/assets/buildup