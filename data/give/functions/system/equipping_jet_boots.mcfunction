#スニーク時間を地面にいる時にリセット
##削除
#execute as @a[predicate=give:on_ground] at @s run scoreboard players set @s sneak_time 0

#JetBootsを装備している時に常時実行
execute as @a[predicate=give:equipping_jet_boots,predicate=!give:on_ground,tag=Admin] at @s unless block ~ ~-3 ~ air run summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:28,Amplifier:0b,Duration:2,ShowParticles:0b,ShowIcon:0b}]}
execute as @a[predicate=give:equipping_jet_boots,predicate=give:on_ground,tag=Admin] at @s run summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:8,Amplifier:4b,Duration:2,ShowParticles:0b,ShowIcon:0b}]}
execute as @a[predicate=give:equipping_jet_boots,tag=Admin] at @s run summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:1,Amplifier:2b,Duration:2,ShowParticles:0b,ShowIcon:0b}]} 
#execute as @a[predicate=give:equipping_jet_boots,predicate=give:on_ground,scores={sneak_time=1..},tag=Admin] at @s run particle minecraft:lava ~ ~-1 ~ 0.01 0.01 0.01 1 1 normal @s 
