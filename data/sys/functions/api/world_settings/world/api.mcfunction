#> sys:api/world_settings/world/api
#
# ワールド設定
#
# @api

# 強制ロードチャンク(壁用)を設定
    forceload add 255 0 -256 0
# ワールドボーダーを設定
    worldborder set 512
# 壁を作る
    function sys:api/world_settings/world/wall/fill_all {block: "bedrock"}