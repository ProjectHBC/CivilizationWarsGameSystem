#> sys:game/fail_safe/start/prepare/dimension
#
# dimensionの設定に必要な処理
#
# @within function sys:game/fail_safe/start/prepare/

# 暫定的に一致するDimension名があったら返却する(返り値は任意の自然数)
    execute if data storage config: {"Dimension": "experimental"} run return 1
    # execute if data storage config: {"Dimension": "test"} run return 2