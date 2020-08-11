# ladies
lady = Category.create(name: "レディース")
lady_1 = lady.children.create(name: "トップス")
lady_1.children.create([{name: "Tシャツ"},
                        {name: "シャツ/ブラウス"},
                        {name: "ポロシャツ"},
                        {name: "ニット/セーター"},
                        {name: "チュニック"},
                        {name: "カーティガン"},
                        {name: "パーカー"},
                        {name: "トレーナー/スウェット"},
                        {name: "ジャージ"},
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
lady_3.children.create([{name: "デニム/ジーンズ"},
                        {name: "ショートパンツ"},
                        {name: "チノパン"},
                        {name: "クロップドパンツ"},
                        {name: "サロペット/オーバーオール"},
                        {name: "サルエルパンツ"},
                        {name: "ガウチョパンツ"},
                        {name: "その他"}])
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
                        {name: "サンダル"},
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
men_1.children.create([{name: "Tシャツ"},
                       {name: "シャツ"},
                       {name: "ポロシャツ"},
                       {name: "タンクトップ"},
                       {name: "ニット/セーター"},
                       {name: "パーカー"},
                       {name: "スウェット"},
                       {name: "ジャージ"},
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
men_3.children.create([{name: "デニム/ジーンズ"},
                       {name: "ワークパンツ/カーゴパンツ"},
                       {name: "スラックス"},
                       {name: "チノパン"},
                       {name: "ショートパンツ"},
                       {name: "その他"}])
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
                        {name: "アンダーウェア"},
                        {name: "その他"}])
men_12 = men.children.create(name: "その他")

# baby,kids
baby_kids = Category.create(name: "ベビー・キッズ")
baby_kids_1 = baby_kids.children.create(name: "ベビー服(女の子用) ~95cm")
baby_kids_1.children.create([{name: "トップス"},
                             {name: "アウター"},
                             {name: "パンツ"},
                             {name: "スカート"},
                             {name: "その他"}])
baby_kids_2 = baby_kids.children.create(name: "ベビー服(男の子用) ~95cm")
baby_kids_2.children.create([{name: "トップス"},
                             {name: "アウター"},
                             {name: "パンツ"},
                             {name: "下着/肌着"},
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
baby_kids_6.children.create([{name: "靴下/スパッツ"},
                             {name: "帽子"},
                             {name: "エプロン"},
                             {name: "サスペンダー"},
                             {name: "その他"}])
baby_kids_7 = baby_kids.children.create(name: "おむつ/トイレ/バス")
baby_kids_7.children.create([{name: "おむつ用品"},
                             {name: "トレーニング用品"},
                             {name: "お風呂用品"},
                             {name: "その他"}])
baby_kids_8 = baby_kids.children.create(name: "授乳/食事")
baby_kids_8.children.create([{name: "ミルク"},
                             {name: "ベビーフード"},
                             {name: "食器"},
                             {name: "その他"}])
baby_kids_9 = baby_kids.children.create(name: "外出/移動用品")
baby_kids_9.children.create([{name: "ベビーカー"},
                             {name: "抱っこひも/スリング"},
                             {name: "チャイルドシート"},
                             {name: "その他"}])
baby_kids_10 = baby_kids.children.create(name: "ベビー家具/寝具/室内用品")
baby_kids_10.children.create([{name: "ベッド"},
                              {name: "布団/毛布"},
                              {name: "イス"},
                              {name: "たんす"},
                              {name: "その他"}])
baby_kids_11 = baby_kids.children.create(name: "おもちゃ")
baby_kids_11.children.create([{name: "おふろのおもちゃ"},
                              {name: "がらがら"},
                              {name: "知育玩具"},
                              {name: "絵本"},
                              {name: "その他"}])
baby_kids_11 = baby_kids.children.create(name: "その他")

# インテリア・家具・キッチン
interior_furniture_kitchen = Category.create(name: "インテリア・家具・キッチン")
interior_furniture_kitchen_1 = interior_furniture_kitchen.children.create(name: "キッチン用品")
interior_furniture_kitchen_1.children.create([{name: "鍋/フライパン"},
                                              {name: "食器"},
                                              {name: "キッチン雑貨"},
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
book_music_game_5 = book_music_game.children.create(name: "ゲーム")
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
toy_hobby_2 = toy_hobby.children.create(name: "フィギュア")
toy_hobby_2.children.create([{name: "コミック/アニメ"},
                             {name: "ゲームキャラクター"},
                             {name: "スポーツ"},
                             {name: "その他"}])

# 家電・スマホ・カメラ
appliance_smartphone_camera = Category.create(name: "家電・スマホ・カメラ")
appliance_smartphone_camera_1 = appliance_smartphone_camera.children.create(name: "スマートフォン/携帯電話")
appliance_smartphone_camera_1.children.create([{name: "スマートフォン本体"},
                                               {name: "バッテリー/充電器"},
                                               {name: "携帯電話本体"},
                                               {name: "その他"}])
appliance_smartphone_camera_2 = appliance_smartphone_camera.children.create(name: "スマホアクセサリー")
appliance_smartphone_camera_2.children.create([{name: "Android用ケース"},
                                               {name: "iPhone用ケース"},
                                               {name: "イヤホンジャック"},
                                               {name: "ストラップ"},
                                               {name: "フィルム"},
                                               {name: "自撮り棒"},
                                               {name: "その他"}])
appliance_smartphone_camera_3 = appliance_smartphone_camera.children.create(name: "PC/タブレット")
appliance_smartphone_camera_3.children.create([{name: "タブレット"},
                                               {name: "ノートPC"},
                                               {name: "デスクトップ型PC"},
                                               {name: "ディスプレイ"},
                                               {name: "電子ブックリーダー"},
                                               {name: "PC周辺機器"},
                                               {name: "PCパーツ"},
                                               {name: "その他"}])
appliance_smartphone_camera_4 = appliance_smartphone_camera.children.create(name: "カメラ")
appliance_smartphone_camera_4.children.create([{name: "デジタルカメラ"},
                                               {name: "ビデオカメラ"},
                                               {name: "レンズ"},
                                               {name: "フィルムカメラ"},
                                               {name: "防犯カメラ"},
                                               {name: "その他"}])
appliance_smartphone_camera_5 = appliance_smartphone_camera.children.create(name: "テレビ/映像機器")
appliance_smartphone_camera_5.children.create([{name: "テレビ"},
                                               {name: "プロジェクター"},
                                               {name: "ブルーレイレコーダー/プレイヤー"},
                                               {name: "DVDレコーダー/プレイヤー"},
                                               {name: "映像用ケーブル"},
                                               {name: "その他"}])
appliance_smartphone_camera_6 = appliance_smartphone_camera.children.create(name: "オーディオ機器")
appliance_smartphone_camera_6.children.create([{name: "ポータブルプレーヤー"},
                                               {name: "イヤフォン"},
                                               {name: "ヘッドフォン"},
                                               {name: "アンプ"},
                                               {name: "スピーカー"},
                                               {name: "ケーブル/シールド"},
                                               {name: "ラジオ"},
                                               {name: "その他"}])
appliance_smartphone_camera_7 = appliance_smartphone_camera.children.create(name: "美容/健康")
appliance_smartphone_camera_7.children.create([{name: "ヘアドライヤー/ヘアアイロン"},
                                               {name: "美容機器"},
                                               {name: "電気シェーバー"},
                                               {name: "電動歯ブラシ"},
                                               {name: "その他"}])
appliance_smartphone_camera_8 = appliance_smartphone_camera.children.create(name: "冷暖房/空調")
appliance_smartphone_camera_8.children.create([{name: "エアコン"},
                                               {name: "空気清浄器"},
                                               {name: "加湿器"},
                                               {name: "扇風機"},
                                               {name: "除湿機"},
                                               {name: "ファンヒーター"},
                                               {name: "電気ヒーター"},
                                               {name: "オイルヒーター"},
                                               {name: "ストーブ"},
                                               {name: "ホットカーペット"},
                                               {name: "こたつ"},
                                               {name: "電気毛布"},
                                               {name: "その他"}])
appliance_smartphone_camera_9 = appliance_smartphone_camera.children.create(name: "生活家電")
appliance_smartphone_camera_9.children.create([{name: "冷蔵庫"},
                                               {name: "洗濯機"},
                                               {name: "炊飯器"},
                                               {name: "電子レンジ/オーブン"},
                                               {name: "調理機器"},
                                               {name: "アイロン"},
                                               {name: "掃除機"},
                                               {name: "エスプレッソマシーン/コーヒーメーカー"},
                                               {name: "衣類乾燥機"},
                                               {name: "その他"}])
appliance_smartphone_camera_10 = appliance_smartphone_camera.children.create(name: "その他")

# スポーツ・レジャー
sports_leisure = Category.create(name: "スポーツ・レジャー")
sports_leisure_1 = sports_leisure.children.create(name: "ゴルフ")
sports_leisure_1.children.create([{name: "クラブ"},
                                  {name: "ウェア(男性用)"},
                                  {name: "ウェア(女性用)"},
                                  {name: "バッグ"},
                                  {name: "シューズ(男性用)"},
                                  {name: "シューズ(女性用)"},
                                  {name: "アクセサリー"},
                                  {name: "その他"}])
sports_leisure_2 = sports_leisure.children.create(name: "フィッシング")
sports_leisure_2.children.create([{name: "ロッド"},
                                  {name: "リール"},
                                  {name: "ルアー用品"},
                                  {name: "ウェア"},
                                  {name: "釣り糸/ライン"},
                                  {name: "その他"}])
sports_leisure_3 = sports_leisure.children.create(name: "自転車")
sports_leisure_3.children.create([{name: "自転車本体"},
                                  {name: "ウェア"},
                                  {name: "パーツ"},
                                  {name: "アクセサリー"},
                                  {name: "バッグ"},
                                  {name: "工具/メンテナンス"},
                                  {name: "その他"}])
sports_leisure_4 = sports_leisure.children.create(name: "トレーニング/エクササイズ")
sports_leisure_4.children.create([{name: "ランニング"},
                                  {name: "ウォーキング"},
                                  {name: "ヨガ"},
                                  {name: "トレーニング用品"},
                                  {name: "その他"}])
sports_leisure_5 = sports_leisure.children.create(name: "野球")
sports_leisure_5.children.create([{name: "ウェア"},
                                  {name: "シューズ"},
                                  {name: "グローブ"},
                                  {name: "バッド"},
                                  {name: "アクセサリー"},
                                  {name: "防具"},
                                  {name: "練習機器"},
                                  {name: "応援グッズ"},
                                  {name: "その他"}])
sports_leisure_6 = sports_leisure.children.create(name: "サッカー/フットサル")
sports_leisure_6.children.create([{name: "ウェア"},
                                  {name: "シューズ"},
                                  {name: "ボール"},
                                  {name: "アクセサリー"},
                                  {name: "応援グッズ"},
                                  {name: "その他"}])
sports_leisure_7 = sports_leisure.children.create(name: "テニス")
sports_leisure_7.children.create([{name: "ラケット(硬式用)"},
                                  {name: "ラケット(軟式用)"},
                                  {name: "ウェア"},
                                  {name: "シューズ"},
                                  {name: "ボール"},
                                  {name: "アクセサリー"},
                                  {name: "その他"}])
sports_leisure_8 = sports_leisure.children.create(name: "スキー/スノーボード")
sports_leisure_8.children.create([{name: "板"},
                                  {name: "ストック"},
                                  {name: "ボード"},
                                  {name: "パインディング"},
                                  {name: "ブーツ(男性用)"},
                                  {name: "ブーツ(女性用)"},
                                  {name: "ブーツ(子供用)"},
                                  {name: "ウェア(男性用)"},
                                  {name: "ウェア(女性用)"},
                                  {name: "ウェア(子供用)"},
                                  {name: "その他"}])
sports_leisure_9 = sports_leisure.children.create(name: "その他スポーツ")
sports_leisure_9.children.create([{name: "ダンス/バレエ"},
                                  {name: "サーフィン"},
                                  {name: "バスケットボール"},
                                  {name: "バドミントン"},
                                  {name: "バレーボール"},
                                  {name: "スケートボード"},
                                  {name: "陸上競技"},
                                  {name: "ラグビー"},
                                  {name: "アメリカンフットボール"},
                                  {name: "ボクシング"},
                                  {name: "ボウリング"},
                                  {name: "その他"}])
sports_leisure_10 = sports_leisure.children.create(name: "アウトドア")
sports_leisure_10.children.create([{name: "テント/タープ"},
                                   {name: "ライト/ランタン"},
                                   {name: "寝袋/寝具"},
                                   {name: "テーブル/チェア"},
                                   {name: "ストーブ/コンロ"},
                                   {name: "調理器具"},
                                   {name: "食器"},
                                   {name: "登山用品"},
                                   {name: "その他"}])
sports_leisure_11 = sports_leisure.children.create(name: "その他")
sports_leisure_11.children.create([{name: "旅行用品"},
                                   {name: "その他"}])

# ハンドメイド
handmade = Category.create(name: "ハンドメイド")
handmade_1 = handmade.children.create(name: "アクセサリー(女性用)")
handmade_1.children.create([{name: "ピアス"},
                            {name: "イヤリング"},
                            {name: "ネックレス"},
                            {name: "ブレスレット"},
                            {name: "リング"},
                            {name: "チャーム"},
                            {name: "ヘアゴム"},
                            {name: "アンクレット"},
                            {name: "その他"}])
handmade_2 = handmade.children.create(name: "ファッション/小物")
handmade_2.children.create([{name: "バッグ(女性用)"},
                            {name: "バッグ(男性用)"},
                            {name: "財布(女性用)"},
                            {name: "財布(男性用)"},
                            {name: "ファッション雑貨"},
                            {name: "その他"}])
handmade_3 = handmade.children.create(name: "アクセサリー/時計")
handmade_3.children.create([{name: "アクセサリー(男性用)"},
                            {name: "時計(女性用)"},
                            {name: "時計(男性用)"},
                            {name: "その他"}])
handmade_4 = handmade.children.create(name: "日用品/インテリア")
handmade_4.children.create([{name: "キッチン用品"},
                            {name: "家具"},
                            {name: "文房具"},
                            {name: "アート/写真"},
                            {name: "アロマ/キャンドル"},
                            {name: "フラワー/ガーデン"},
                            {name: "その他"}])
handmade_5 = handmade.children.create(name: "趣味/おもちゃ")
handmade_5.children.create([{name: "クラフト/布製品"},
                            {name: "おもちゃ/人形"},
                            {name: "その他"}])
handmade_6 = handmade.children.create(name: "キッズ/ベビー")
handmade_6.children.create([{name: "ファッション雑貨"},
                            {name: "スタイ/よだれかけ"},
                            {name: "外出用品"},
                            {name: "その他"}])
handmade_7 = handmade.children.create(name: "素材/材料")
handmade_7.children.create([{name: "各種パーツ"},
                            {name: "生地/糸"},
                            {name: "型紙/パターン"},
                            {name: "その他"}])
handmade_8 = handmade.children.create(name: "その他")

# チケット
ticket = Category.create(name: "チケット")
ticket_1 = ticket.children.create(name: "音楽")
ticket_1.children.create([{name: "男性アイドル"},
                          {name: "女性アイドル"},
                          {name: "韓流"},
                          {name: "国内アーティスト"},
                          {name: "海外アーティスト"},
                          {name: "音楽フェス"},
                          {name: "その他"}])
ticket_2 = ticket.children.create(name: "スポーツ")
ticket_2.children.create([{name: "サッカー"},
                          {name: "野球"},
                          {name: "テニス"},
                          {name: "格闘技/プロレス"},
                          {name: "その他"}])
ticket_3 = ticket.children.create(name: "演劇/芸能")
ticket_3.children.create([{name: "ミュージカル"},
                          {name: "演劇"},
                          {name: "伝統芸能"},
                          {name: "落語"},
                          {name: "その他"}])
ticket_4 = ticket.children.create(name: "イベント")
ticket_4.children.create([{name: "声優/アニメ"},
                          {name: "キッズ/ファミリー"},
                          {name: "トークショー/講演会"},
                          {name: "その他"}])
ticket_5 = ticket.children.create(name: "映画")
ticket_5.children.create([{name: "邦画"},
                          {name: "洋画"},
                          {name: "その他"}])
ticket_6 = ticket.children.create(name: "施設利用券")
ticket_6.children.create([{name: "遊園地/テーマパーク"},
                          {name: "美術館/博物館"},
                          {name: "スキー場"},
                          {name: "ゴルフ場"},
                          {name: "その他"}])
ticket_7 = ticket.children.create(name: "優待券/割引券")
ticket_7.children.create([{name: "ショッピング"},
                          {name: "レストラン/食事券"},
                          {name: "フード/ドリンク券"},
                          {name: "宿泊券"},
                          {name: "その他"}])
ticket_8 = ticket.children.create(name: "その他")

# 自動車・オートバイ
car_motorcycle = Category.create(name: "自動車・オートバイ")
car_motorcycle_1 = car_motorcycle.children.create(name: "自動車タイヤ/ホイール")
car_motorcycle_1.children.create([{name: "タイヤ/ホイールセット"},
                                  {name: "タイヤ"},
                                  {name: "ホイール"},
                                  {name: "その他"}])
car_motorcycle_2 = car_motorcycle.children.create(name: "自動車パーツ")
car_motorcycle_2.children.create([{name: "サスペンション"},
                                  {name: "ブレーキ"},
                                  {name: "外装/エアロパーツ"},
                                  {name: "ライト"},
                                  {name: "その他"}])
car_motorcycle_3 = car_motorcycle.children.create(name: "自動車アクセサリー")
car_motorcycle_3.children.create([{name: "車内アクセサリー"},
                                  {name: "カーナビ"},
                                  {name: "カーオーディオ"},
                                  {name: "車外アクセサリー"},
                                  {name: "その他"}])
car_motorcycle_4 = car_motorcycle.children.create(name: "オートバイパーツ")
car_motorcycle_4.children.create([{name: "タイヤ"},
                                  {name: "マフラー"},
                                  {name: "エンジン/冷却装置"},
                                  {name: "シート"},
                                  {name: "その他"}])
car_motorcycle_5 = car_motorcycle.children.create(name: "オートバイアクセサリー")
car_motorcycle_5.children.create([{name: "ヘルメット/シールド"},
                                  {name: "バイクウェア/装備"},
                                  {name: "アクセサリー"},
                                  {name: "メンテナンス"},
                                  {name: "その他"}])

# その他
others = Category.create(name: "その他")
others_1 = others.children.create(name: "ペット用品")
others_1.children.create([{name: "ペットフード"},
                          {name: "犬用品"},
                          {name: "猫用品"},
                          {name: "魚用品/水草"},
                          {name: "小動物"},
                          {name: "その他"}])
others_2 = others.children.create(name: "食品")
others_2.children.create([{name: "菓子"},
                          {name: "米"},
                          {name: "野菜"},
                          {name: "果物"},
                          {name: "その他"}])
others_3 = others.children.create(name: "飲料/酒")
others_3.children.create([{name: "コーヒー"},
                          {name: "ソフトドリンク"},
                          {name: "ミネラルウォーター"},
                          {name: "ワイン"},
                          {name: "その他"}])
others_4 = others.children.create(name: "日用品/生活雑貨/旅行用品")
others_4.children.create([{name: "タオル/バス用品"},
                          {name: "日用品/生活雑貨"},
                          {name: "洗剤/柔軟剤"},
                          {name: "旅行用品"},
                          {name: "その他"}])
others_5 = others.children.create(name: "アンティーク/コレクション")
others_5.children.create([{name: "雑貨"},
                          {name: "工芸品"},
                          {name: "家具"},
                          {name: "印刷物"},
                          {name: "その他"}])
others_6 = others.children.create(name: "文房具/事務用品")
others_6.children.create([{name: "筆記具"},
                          {name: "ノート/メモ帳"},
                          {name: "テープ/マスキングテープ"},
                          {name: "カレンダー/スケジュール"},
                          {name: "その他"}])
others_7 = others.children.create(name: "事務/店舗用品")
others_7.children.create([{name: "オフィス用品一般"},
                          {name: "オフィス家具"},
                          {name: "店舗用品"},
                          {name: "OA機器"},
                          {name: "その他"}])
others_8 = others.children.create(name: "その他")