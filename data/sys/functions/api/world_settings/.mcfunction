#> sys:api/world_settings/
#
# ディメンション名を引数に、playerとworldを設定する  
# ※必ず"sys:api/world_settings/player/"と"sys:api/world_settings/world/"のデータと合わせてください
#
# @api

# 代入
    $execute in $(Dimension) run function sys:api/world_settings/player/api {Selector1: "@a[team=TeamA]", Selector2: "@a[team=TeamB]"}
    $execute in $(Dimension) run function sys:api/world_settings/api