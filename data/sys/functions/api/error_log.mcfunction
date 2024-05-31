#> sys:api/error_log
#
# エラーが発生した時にエラーメッセージをAdminに返却する  
# Error.Idを格納してから実行するパターンと引数(ErrorUniqueId)にメッセージを格納して実行するパターンの2つがあります  
# ※Error.Idの方式の場合、引数(ErrorUniqueId)にはnullを代入してください
#
# @input
#   storage api: Error.Id : string
#   storage api: Error.UniqueId : string
# @api

# 指定されたidに基づいたエラーメッセージを返却する
    $data modify storage api: Error.UniqueId set value "$(ErrorUniqueId)"
    # execute if data storage api: {"Error.UniqueId":""} run tellraw @a[team=Admin] [{"text": "System -> ","color": "red"},{"storage": "api:","nbt": "Error.Id"},{"text": "が発生しました"}]
    # execute unless data storage api: {"Error.UniqueId":""} run tellraw @a[team=Admin] [{"text": "System -> ","color": "red"},{"storage": "api:","nbt": "Error.UniqueId"},{"text": "が発生しました"}]
    tellraw @a[team=Admin] [{"text": "System -> ","color": "red"},{"storage": "api:","nbt": "Error.Id"},{"storage": "api:","nbt": "Error.UniqueId"},{"text": "が発生しました"}]
# Error.Idを削除する
    data modify storage api: Error.Id set value ""
    data modify storage api: Error.UniqueId set value ""