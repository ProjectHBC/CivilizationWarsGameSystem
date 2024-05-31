#> cmd:config/game/dimension
#
# ディメンションを設定する
#
# @user

# 設定
    $data modify storage config: Dimension set value $(Dimension)

# メッセージ (分秒を追加する場合は変換する計算式をapi化させる)
    tellraw @a[team=Admin] [{"text": "System -> ","color": "green"},{"text": "ディメンションを\""},{"storage": "config:","nbt": "Dimension"},{"text": "\"に設定しました"}]