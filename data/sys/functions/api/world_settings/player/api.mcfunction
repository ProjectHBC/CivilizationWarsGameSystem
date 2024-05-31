#> sys:api/world_settings/player/api
#
# プレイヤー引数指定してゲーム用のディメンションに飛ばす  
# 通常./player/からの呼び出しでは、SelectorにはTeamAまたはTeamBが自動で代入されます
#
# @api

# エリトラを付ける
    $item replace entity $(Selector1) armor.chest with minecraft:elytra{HideFlags:5,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}]}
    $item replace entity $(Selector2) armor.chest with minecraft:elytra{HideFlags:5,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}]}

# 無敵にさせる
    $effect give $(Selector1) minecraft:resistance 30 4 true
    $effect give $(Selector2) minecraft:resistance 30 4 true

# tpさせる
    $execute as $(Selector1) run tp 0 200 16
    $execute as $(Selector2) run tp 0 200 -16

# 35sec
    schedule function sys:api/world_settings/player/after35s 35s