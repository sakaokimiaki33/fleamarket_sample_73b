# ladies
lady = Category.create(name: "レディース")
Lady_1 = lady.children.create(name: "トップス")
lady_1.children.create([{name: "Tシャツ"},
                        {name: "シャツ/ブラウス"},
                        {name: "ポロシャツ"},
                        {name: "ニット/セーター"},
                        {name: "チュニック"},
                        {name: "カーティガン"},
                        {name: "パーカー"},
                        {name: "トレーナー/スウェット"},
                        {name: "ジャージ"}
                        {name: "その他"}])
lady_2 = lady.children.create(name: "ジャケット/アウター")
lady_2.children.create([{name: "テーラードジャケット"},
                        {name: "Gジャン/デニムジャケット"},
                        {name: "レザージャケット"},
                        {name: "ダウンジャケット"},
                        {name: "ジャンパー/ブルゾン"},
                        {name: "トレンチコート"},
                        {name: "毛皮/ファーコート"},
                        {name: "スカジャン"},
                        {name: "その他"}])
lady_3 = lady.children.create(name: "パンツ")
lady_3.children.create({{name: "デニム/ジーンズ"},
                        {name: "ショートパンツ"},
                        {name: "チノパン"},
                        {name: "クロップドパンツ"},
                        {name: "サロペット/オーバーオール"},
                        {name: "サルエルパンツ"},
                        {name: "ガウチョパンツ"},
                        {name: "その他"}})
lady_4 = lady.children.create(name: "スカート")
lady_4.children.create([{name: "ミニスカート"},
                        {name: "ひざ丈スカート"},
                        {name: "ロングスカート"},
                        {name: "その他"}])
lady_5 = lady.children.create(name: "ワンピース")
lady_5.children.create([{name: "ミニワンピース"},
                        {name: "ひざ丈ワンピース"},
                        {name: "ロングワンピース"},
                        {name: "その他"}])
lady_6 = lady.children.create(name: "靴")
lady_6.children.create([{name: "ハイヒール/パンプス"},
                        {name: "ブーツ"},
                        {name: "サンダル"}
                        {name: "スニーカー"},
                        {name: "ローファー/革靴"},
                        {name: "長靴/レインシューズ"},
                        {name: "その他"}])
lady_7 = lady.children.create(name: "ルームウェア/パジャマ")
lady_7.children.create([{name: "パジャマ"},
                        {name: "ルームウェア"}])
lady_8 = lady.children.create(name: "レッグウェア")
lady_8.children.create([{name: "ソックス"},
                        {name: "スパッツ/レギンス"},
                        {name: "ストッキング/タイツ"},
                        {name: "レッグウォーマー"},
                        {name: "その他"}])
lady_9 = lady.children.create(name: "帽子")
lady_9.children.create([{name: "ニットキャップ/ビーニー"},
                        {name: "ハット"},
                        {name: "ハンチング/ベレー帽"},
                        {name: "キャップ"},
                        {name: "キャスケット"},
                        {name: "麦わら帽子"},
                        {name: "その他"}])
lady_10 = lady.children.create(name: "バッグ")
lady_10.children.create([{name: "ハンドバッグ"},
                         {name: "トートバッグ"},
                         {name: "エコバッグ"},
                         {name: "リュック/バックパック"},
                         {name: "ボストンバッグ"},
                         {name: "スポーツバッグ"},
                         {name: "ショルダーバッグ"},
                         {name: "クラッチバッグ"},
                         {name: "ボディバッグ/ウェストバッグ"},
                         {name: "ビジネスバッグ"},
                         {name: "旅行用バッグ/キャリーバッグ"},
                         {name: "その他"}])
lady_11 = lady.children.create(name: "アクセサリー")
lady_11.children.create([{name: "ネックレス"},
                         {name: "ブレスレット"},
                         {name: "バングル/リストバンド"},
                         {name: "リング"},
                         {name: "ピアス"},
                         {name: "イヤリング"},
                         {name: "アンクレット"},
                         {name: "その他"}])
lady_12 = lady.children.create(name: "ヘアアクセサリー")
lady_12.children.create([{name: "ヘアゴム/シュシュ"},
                         {name: "ヘアバンド/カチューシャ"},
                         {name: "ヘアピン "},
                         {name: "その他"}])
lady_13 = lady.children.create(name: "小物")
lady_13.children.create([{name: "財布"},
                         {name: "コインケース/小銭入れ"},
                         {name: "名刺入れ/定期入れ"},
                         {name: "キーケース"},
                         {name: "キーホルダー"},
                         {name: "手袋"},
                         {name: "ベルト"},
                         {name: "マフラー/ショール"},
                         {name: "サングラス/メガネ"},
                         {name: "傘/レインコート"},
                         {name: "その他"}])
lady_14 = lady.children.create(name: "時計")
lady_14.children.create([{name: "腕時計"},
                         {name: "ラバーベルト"},
                         {name: "レザーベルト"},
                         {name: "金属ベルト"},
                         {name: "その他"}])
lady_15 = lady.children.create(name: "その他")

# Mens
men = Category.create(name: "メンズ")
men_1 = men.children.create(name: "トップス")
men_1.children.create([{name: "Tシャツ)"},
                       {name: "シャツ"},
                       {name: "ポロシャツ"},
                       {name: "タンクトップ"},
                       {name: "ニット/セーター"},
                       {name: "パーカー"},
                       {name: "スウェット"},
                       {name: "ジャージ"}
                       {name: "その他"}])
men_2 = men.children.create(name: "ジャケット/アウター")
men_2.children.create([{name: "Gジャン/デニムジャケット"},
                       {name: "レザージャケット"},
                       {name: "ダウンジャケット"},
                       {name: "フライトジャケット"},
                       {name: "トレンチコート"},
                       {name: "スタジャン"},
                       {name: "スカジャン"},
                       {name: "ブルゾン"},
                       {name: "ダウンベスト"},
                       {name: "その他"}])
men_3 = men.children.create(name: "パンツ")
men_3.children.create({{name: "デニム/ジーンズ"},
                       {name: "ワークパンツ/カーゴパンツ"},
                       {name: "スラックス"},
                       {name: "チノパン"},
                       {name: "ショートパンツ"},
                       {name: "その他"}})
men_4 = men.children.create(name: "靴")
men_4.children.create([{name: "スニーカー"},
                       {name: "サンダル"},
                       {name: "ブーツ"},
                       {name: "ドレス/ビジネス"},
                       {name: "長靴/レインシューズ"},
                       {name: "その他"}])
men_5 = men.children.create(name: "バッグ")
men_5.children.create([{name: "ショルダーバッグ"},
                       {name: "トートバッグ"},
                       {name: "ボストンバッグ"},
                       {name: "リュック/バックパック"},
                       {name: "ボディバッグ"},
                       {name: "ビジネスバッグ"},
                       {name: "トラベルバッグ"},
                       {name: "その他"}])
men_6 = men.children.create(name: "スーツ")
men_6.children.create([{name: "スーツジャケット"},
                       {name: "スーツベスト"},
                       {name: "スラックス"},
                       {name: "セットアップ"},
                       {name: "その他"}])
men_7 = men.children.create(name: "帽子")
men_7.children.create([{name: "キャップ"},
                       {name: "ハット"},
                       {name: "ニットキャップ/ビーニー"},
                       {name: "ハンチング/ベレー帽"},
                       {name: "キャスケット"},
                       {name: "サンバイザー"},
                       {name: "その他"}])
men_8 = men.children.create(name: "アクセサリー")
men_8.children.create([{name: "ネックレス"},
                       {name: "ブレスレット"},
                       {name: "バングル/リストバンド"},
                       {name: "リング"},
                       {name: "ピアス"},
                       {name: "アンクレット"},
                       {name: "その他"}])
men_9 = men.children.create(name: "小物")
men_9.children.create([{name: "財布"},
                       {name: "マネークリップ"},
                       {name: "コインケース/小銭入れ"},
                       {name: "名刺入れ/定期入れ"},
                       {name: "キーケース"},
                       {name: "キーホルダー"},
                       {name: "ネクタイ"},
                       {name: "サングラス/メガネ"},
                       {name: "モバイルケース/カバー"},
                       {name: "傘/レインコート"},
                       {name: "その他"}])
men_10 = men.children.create(name: "時計")
men_10.children.create([{name: "腕時計"},
                        {name: "ラバーベルト"},
                        {name: "レザーベルト"},
                        {name: "金属ベルト"},
                        {name: "その他"}])
men_11 = men.children.create(name: "ファッション小物")　
men_11.children.create([{name: "ソックス"},
                        {name: "アンダーウェア"}
                        {name: "その他"}])
men_12 = men.children.create(name: "その他")

# baby,kids
baby_kids = Category.create(name: "ベビー・キッズ")
baby_kids_1 = baby_kids.children.create(name: "ベビー服(女の子用) ~95cm")
baby_kids_1.children.create([{name: "トップス"},
                             {name: "アウター"},
                             {name: "パンツ"},
                             {name: "スカート"},
                             {name: "ワンピース"},
                             {name: "下着/肌着"},
                             {name: "パジャマ"},
                             {name: "ロンパース"},
                             {name: "その他"}])
baby_kids_2 = baby_kids.children.create(name: "ベビー服(男の子用) ~95cm")
baby_kids_2.children.create([{name: "トップス"},
                             {name: "アウター"},
                             {name: "パンツ"},
                             {name: "下着/肌着"},
                             {name: "パジャマ"},
                             {name: "ロンパース"},
                             {name: "その他"}])
baby_kids_3 = baby_kids.children.create(name: "キッズ服(女の子用) 100cm~")
baby_kids_3.children.create([{name: "トップス"},
                             {name: "アウター"},
                             {name: "パンツ"},
                             {name: "スカート"},
                             {name: "ワンピース"},
                             {name: "下着/肌着"},
                             {name: "パジャマ"},
                             {name: "その他"}])
baby_kids_4 = baby_kids.children.create(name: "キッズ服(男の子用) 100cm~")
baby_kids_4.children.create([{name: "トップス"},
                              {name: "アウター"},
                              {name: "パンツ"},
                              {name: "下着/肌着"},
                              {name: "パジャマ"},
                              {name: "ロンパース"},
                              {name: "その他"}])
baby_kids_5 = baby_kids.children.create(name: "キッズ靴")
baby_kids_5.children.create([{name: "スニーカー"},
                             {name: "サンダル"},
                             {name: "ブーツ"},
                             {name: "長靴"},
                             {name: "その他"}])
baby_kids_6 = baby_kids.children.create(name: "子ども用ファッション小物")
baby_kids_6.children.create([{name: "靴下/タイツ"},
                              {name: "帽子"},
                              {name: "その他"}])
baby_kids_7 = baby_kids.children.create(name: "おむつ/トイレ/バス")
baby_kides_7.children.create([{name: "おむつ用品"},
                               {name: "トレーニング用品"},
                               {name: "お風呂用品"},
                               {name: "その他"}])
baby_kids_8 = baby_kids.children.create(name: "授乳/食事")
baby_kids_8.children.create([{name: "ミルク"},
                                         {name: "ベビーフード"},
                                         {name: "食器"},
                                         {name: "その他"}])
baby_kids_9 = baby_kids.children.create(name: "ベビー家具/寝具/室内用品")
baby_kids_9.children.create([{name: "ベッド"},
                             {name: "布団/毛布"},
                             {name: "その他"}])
baby_kids_10 = baby_kids.children.create(name: "おもちゃ")
baby_kids_10.children.create([{name: "おもちゃ"},
                              {name: "知育玩具"},
                              {name: "絵本"},
                              {neme: "その他"}])
baby_kids_11 = baby_kids.children.create(name: "その他")

# インテリア・家具・キッチン
interior_furniture_kitchen = Category.create(name: "インテリア・家具・キッチン")
interior_furniture_kitchen_1 = interior_furniture_kitchen.children.create(name: "キッチン用品")
interior_furniture_kitchen_1.children.create([{name: "鍋/フライパン"},
                                              {name: "食器"},
                                              {name: "キッチン雑貨"}
                                              {name: "その他"}])
interior_furniture_kitchen_2 = interior_furniture_kitchen.children.create(name: "家具")
interior_furniture_kitchen_2.children.create([{name: "テーブル/椅子"},
                                              {name: "ソファ"},
                                              {name: "ベッド"},
                                              {name: "収納家具"},
                                              {name: "その他"}])
interior_furniture_kitchen_3 = interior_furniture_kitchen.children.create(name: "インテリア用品")
interior_furniture_kitchen_3.children.create([{name: "カーテン/ブラインド"},
                                              {name: "カーペット/ラグ"},
                                              {name: "ライト/照明"},
                                              {name: "寝具"},
                                              {name: "インテリア小物"},
                                              {name: "その他"}])
interior_furniture_kitchen_4 = interior_furniture_kitchen.children.create(name: "その他")

# 本・音楽・ゲーム
book_music_game = Category.create(name: "本・音楽・ゲーム")
book_music_game_1 = book_music_game.children.create(name: "本")
book_music_game_1.children.create([{name: "文学/小説"},
                                   {name: "ノンフィクション"},
                                   {name: "ビジネス/経済"},
                                   {name: "コンピュータ/IT"},
                                   {name: "趣味/暮らし/子育て"},
                                   {name: "児童書/絵本"},
                                   {name: "雑誌"},
                                   {name: "その他"}])
book_music_game_2 = book_music_game.children.create(name: "漫画")
book_music_game_2.children.create([{name: "全巻セット"},
                                   {name: "少年漫画"},
                                   {name: "少女漫画"},
                                   {name: "青年漫画"},
                                   {name: "女性漫画"},
                                   {name: "その他"}])
book_music_game_3 = book_music_game.children.create(name: "CD")
book_music_game_3.children.create([{name: "邦楽"},
                                   {name: "洋楽"},
                                   {name: "クラシック"},
                                   {name: "その他"}])
book_music_game_4 = book_music_game.children.create(name: "DVD/Blue-ray")
book_music_game_4.children.create([{name: "洋画"},
                                   {name: "邦画"},
                                   {name: "アニメ"},
                                   {name: "その他"}])
book_music_game_5 = book_music_game.chilidren.create(name: "ゲーム")
book_music_game_5.children.create([{name: "家庭用ゲーム本体"},
                                   {name: "家庭用ゲームソフト"},
                                   {name: "携帯用ゲーム本体"},
                                   {name: "携帯用ゲームソフト"},
                                   {name: "その他"}])

# おもちゃ・ホビー
toy_hobby = Category.create(name: "おもちゃ・ホビー")
toy_hobby_1 = toy_hobby.children.create(name: "おもちゃ")
toy_hobby_1.children.create([{name: "模型/プラモデル"},
                             {name: "ぬいぐるみ"},
                             {name: "その他"}])
toy_hobby_2 = toy_hobby_2.children.create(name: "フィギュア")
toy_hobby_2.children.create([{name: "コミック/アニメ"},
                             {name: "ゲームキャラクター"},
                             {name: "スポーツ"},
                             {name: "その他"}])

# 楽器・器材







