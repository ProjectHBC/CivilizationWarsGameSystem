##The Void
give @s[tag=Admin] poisonous_potato{display:{Name:'{"text":"The Void","color":"black","bold":true,"italic":false}',Lore:['{"text":"これはエラーアイテムです","color":"white","italic":false}','{"text":"Adminタグを持った状態で入手する事で","color":"white","italic":false}','{"text":"エラーを回避できます","color":"white","italic":false}','{"text":"Void Item","color":"black","italic":false}']},tag:{VoidItem:1b}} 1
tellraw @s[tag=Admin] {"text": "System -> [The Void]を1個与えました","color": "green"}

##権限エラー
tellraw @s[tag=!Admin] {"text": "System -> 運営タグを持っていないため実行できませんでした","color": "red"}
