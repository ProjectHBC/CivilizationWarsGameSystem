# #> sys:api/prefix
# #
# # prefix(System ->)を簡単に設定する  
# # 頑張ればもっと簡単に、綺麗にできそう
# #
# # @api

# # Prefixデータを初期化
#     data modify storage api: Prefix set value {}
# # 入力マクロ
#     $data modify storage api: Prefix.$(Type) set value "System -> "
# # 色を付けて送信する
#     $execute if data storage api: Prefix.Log run tellraw @a[team=$(Team)] [{"storage":"api:","nbt":"Prefix.Log","color":"green"},{"text":"$(Message)"}]
#     $execute if data storage api: Prefix.Warn run tellraw @a[team=$(Team)] [{"storage":"api:","nbt":"Prefix.Warn","color":"yellow"},{"text":"$(Message)"}]
#     $execute if data storage api: Prefix.Error run tellraw @a[team=$(Team)] [{"storage":"api:","nbt":"Prefix.Error","color":"red"},{"text":"$(Message)"}]

# Messageにstorageのデータ渡せない(渡すとエラーが発生する)ので一旦利用停止
# メッセージの先頭にPrefix.Typeで一括で済めば楽なんだけどね…