module TopicsHelper



  def team(id)
   if id == "1"
     return {name: "読売ジャイアンツ",image: "giants.png"}
   elsif id == "2"
     return {name: "横浜DeNAベイスターズ",image: "baystars.png" }
   elsif id == "3"
     return {name: "阪神タイガース",image: "tigers.png" }
   elsif id == "4"
     return {name: "広島東洋カープ", image: "carp.png"}
   elsif id == "5"
     return {name: "中日ドラゴンズ", image: "dragons.png"}
   elsif id == "6"
     return {name: "東京ヤクルトスワローズ", image: "yakult.png"}
   elsif id == "7"
     return {name: "埼玉西武ライオンズ", image: "lions.png"}
   elsif id == "8"
     return {name: "ソフトバンクホークス", image: "hawks.png"}
   elsif id == "9"
     return {name: "楽天イーグルス", image: "eagles.png"}
   elsif id == "10"
     return {name: "千葉ロッテマリーンズ", image: "marines.png"}
   elsif id == "11"
     return {name: "日本ハムファイターズ", image: "fighters.png"}
   elsif id == "12"
     return {name: "オリックスバッファローズ", image: "buffaloes.png"}
   end
  end
  
end

