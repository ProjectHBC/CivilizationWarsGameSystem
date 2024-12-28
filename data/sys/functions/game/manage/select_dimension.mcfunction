#> sys:game/manage/select_dimension
#
# DimensionをCompoundにしてマクロを呼び出し
#
# @within function sys:game/manage/world

# 一致したデータを実行
    execute if data storage config: {"Dimension": "experimental"} run function sys:api/world_settings/ {"Dimension": "sys:experimental"}
    # execute if data storage config: {"Dimension": "test"} run function sys:api/world_settings/ {"Dimension": "sys:test"}