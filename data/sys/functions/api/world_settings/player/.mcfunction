#> sys:api/world_settings/player/
#
# ディメンションを引数指定してプレイヤーをゲーム用のディメンションに飛ばす
#
# @api

# 代入
    $execute in $(Dimension) run function sys:api/world_settings/player/api {Team1: "@a[team=TeamA]", Team2: "@a[team=TeamB]"}