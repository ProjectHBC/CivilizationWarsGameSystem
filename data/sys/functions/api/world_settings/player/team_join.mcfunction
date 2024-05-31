#> sys:api/world_settings/player/team_join
#
# チーム参加に関するapi、仮
#
# @api

# チーム参加と生存タグ付与
    $team join $(Team) @s
    tag @s add alive

# メッセージ
    tellraw @s[team=TeamA] [{"text": "System -> ","color": "green"},{"text": "Aチームに参加しました"}]
    tellraw @s[team=TeamB] [{"text": "System -> ","color": "green"},{"text": "Bチームに参加しました"}]