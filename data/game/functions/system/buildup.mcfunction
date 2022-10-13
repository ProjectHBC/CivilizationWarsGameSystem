#ベースのシステム構築

##タイマー用
scoreboard objectives add timer dummy
scoreboard objectives add minute dummy
scoreboard objectives add second dummy
##計算用
scoreboard objectives add tmpTime dummy
scoreboard objectives add division_60 dummy
scoreboard objectives add 60 dummy
scoreboard objectives add team_number dummy "チームの人数"
#scoreboard objectives add team_number_0 dummy
#scoreboard players add team_number_0 team_number_0 0
#scoreboard objectives add sougen_member dummy "草原チームの人数"
#scoreboard objectives add janguru_member dummy "ジャングルチームの人数"
###numberに変更する？それとも使わない？
scoreboard objectives add deathcount deathCount
#scoreboard objectives add lastcount dummy
scoreboard objectives add victory_team dummy
###スニーク時間を検知
#scoreboard objectives add sneak_time minecraft.custom:minecraft.sneak_time

##ボスバーを作成
bossbar add sys:timer "timer"
bossbar add sys:begin "begin" 

##チームを作成
team add sougen "草原チーム"
team add janguru "ジャングルチーム"
##チームモディファイ
##草原チーム
team modify sougen color green
team modify sougen friendlyFire false
team modify sougen nametagVisibility hideForOtherTeams
team modify sougen seeFriendlyInvisibles true
##ジャングルチーム
team modify janguru color gold
team modify janguru friendlyFire false
team modify janguru nametagVisibility hideForOtherTeams
team modify janguru seeFriendlyInvisibles true
