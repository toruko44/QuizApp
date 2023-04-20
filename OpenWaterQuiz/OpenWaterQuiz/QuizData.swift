//
//  Data.swift
//  OpenWaterQuiz
//
//  Created by 中道徹 on 2023/04/07.
//

import Foundation

struct Quiz {
    var id = UUID()
    let quiestion : String //問題文
    let answer : [String] //選択肢
    let commentary : String //解説
    let four_choice : Bool //マルバツか４択
    let correct : Int //正解

}

var OpenQuiz = [
    Quiz(quiestion: "BCを使用する目的は？", answer : ["保温","保護","浮力調整","レスキュー"] ,commentary: "BCは空気の出し入れを行うことで浮力調整できる", four_choice:true, correct: 2),
    Quiz(quiestion: "空気は、酸素_％に窒素_％で構成されています", answer :["30 69","25 74","21 78","19 80"], commentary: "空気は、酸素21％に窒素78％で構成されています", four_choice:true , correct: 2),
    Quiz(quiestion: "水中では空気中の何倍の速さで熱が奪われますか？", answer : ["20倍","21倍","25倍","30倍"], commentary: "水中では空気中の25倍の速さで熱が奪われます", four_choice:true , correct: 2),
    Quiz(quiestion: "タンクは３年ごとに耐圧検査をしなくてはならない",answer: [], commentary: "タンクは5年ごとに耐圧検査をしなくてはならない", four_choice:false ,correct: 2),
    Quiz(quiestion: "ダイビング中は激しい動きを避け、通常より深くゆっくりとした呼吸を行います",answer: [], commentary: "ダイビング中は激しい動きを避け、通常より深くゆっくりとした呼吸を行います", four_choice:false,correct: 1 ),
    Quiz(quiestion: "マスクを選ぶときは、フィットしているか、つけた時に不快感がないかなどに注意します", answer: [], commentary: "マスクを選ぶときは、フィットしているか、つけた時に不快感がないかなどに注意します", four_choice: false, correct: 1),
    Quiz(quiestion: "ダイビング中は絶対に息を止めてはいけません", answer: [], commentary: "ダイビング中は絶対に息を止めてはいけません", four_choice: false, correct: 1),
    Quiz(quiestion: "ダイビング中は、激しい動きを避け、通常より深くゆっくりした呼吸を行います", answer: [], commentary: "ダイビング中は、激しい動きを避け、通常より深くゆっくりした呼吸を行います", four_choice: false, correct: 1),
    Quiz(quiestion: "肺の過膨張障害の予防のために、浮上中は絶対に息を止めてはいけません", answer: [], commentary: "肺の過膨張障害の予防のために、浮上中は絶対に息を止めてはいけません" , four_choice: false, correct: 1),
    Quiz(quiestion: "窒素酔いの予防の一つは、深すぎるダイビングを避ける事です", answer: [], commentary: "窒素酔いの予防の一つは、深すぎるダイビングを避ける事です", four_choice: false, correct: 1),
    Quiz(quiestion: "潮汐は、潮の流れや透明度などに大きな影響を与えます。普通最も良い条件は満潮時の潮止まりの時間です", answer: [], commentary: "潮汐は、潮の流れや透明度などに大きな影響を与えます。普通最も良い条件は満潮時の潮止まりの時間です", four_choice: false, correct: 1),
    Quiz(quiestion: "コンピュータを使用する場合、バディごとに最低一台のコンピュータを持つべきです", answer: [], commentary: "コンピュータはダイバー各自がコンピュータを持つ", four_choice: false, correct: 2),
    Quiz(quiestion: "正しい操作に基づいてコンピュータを使用したとしても、減圧症にかかる可能性がある", answer: [], commentary:"正しい操作に基づいてコンピュータを使用したとしても、減圧症にかかる可能性がある" , four_choice: false, correct: 1),
    Quiz(quiestion: "大きなボートからのエントリーは、ジャイアントスライドエントリーが一般的です", answer: [], commentary: "大きなボートからのエントリーは、ジャイアントスライドエントリーが一般的です", four_choice: false, correct: 1),
    Quiz(quiestion: "音の伝わり方は、水中では空気中の約何倍で伝わりますか？", answer: ["２倍","４倍","１０倍","１２倍"], commentary: "音の伝わり方は、水中では空気中の約４倍で伝わりますか？", four_choice: true, correct: 1),
    Quiz(quiestion: "絶対圧とは、何とゲージ圧を加えた数値ですか？", answer: ["環境圧","水圧","大気","周囲圧"], commentary: "絶対圧とは、大気圧とゲージ圧を加えた数値ですか？", four_choice: true, correct: 2),
    Quiz(quiestion: "海水での水深30mの絶対圧は何気圧ですか？", answer: ["１気圧","２気圧","３気圧","４気圧"], commentary: "海水での水深30mの絶対圧は４気圧です", four_choice: true, correct:3 ),
    Quiz(quiestion: "ダイバーの浮力の状態を表しているのは以下のどれですか？", answer: ["プラス浮力","マイナス浮力","中性浮力","以上の全て"], commentary: "ダイバーの浮力の状態を表しているのはプラス浮力,マイナス浮力,中性浮力", four_choice: true, correct: 3),
    Quiz(quiestion: "水中では、物体は実際の距離の_距離に見え_倍の大きさに見えます", answer: ["3/4 4/3","4/3 3/4","2/1 1/2","1/2 2/1"], commentary: "水中では、物体は実際の距離の3/4距離に見え,4/3倍の大きさに見えます", four_choice: true, correct: 0),
    Quiz(quiestion: "空気消費に影響を与える要素には、どのようなものがありますか？", answer: ["運動量","身体の大きさ","低水温","以上の全て"], commentary: "空気消費に影響を与える要素には運動量,身体の大きさ,低水温があります", four_choice: true, correct: 3),
    Quiz(quiestion: "水中で震えを感じました。取るべき行動は？", answer: ["激しく動いて体を温める","ダイビングを中止し浮上する","両腕で自分を抱くようにして治まるのを待つ","気にしない"], commentary: "水中で震えを感じたら、ダイビングを中止し浮上しましょう", four_choice: true, correct: 1),
    Quiz(quiestion: "ある水深から、急激に水温が変化する境目をなんといいますか？", answer: ["ラバーライン","カレントライン","トレイルライン","サーモクライン"], commentary: "ある水深から、急激に水温が変化する境目をサーモクラインと言います", four_choice: true, correct:3 ),
    Quiz(quiestion: "熱帯地域でのダイビングは、特に_に注意することです。", answer: ["一酸化炭素中毒","窒素醉い","日焼け","船醉い"], commentary: "熱帯地域でのダイビングは、特に日焼けに注意することです", four_choice: true, correct:2 ),
    Quiz(quiestion: "安全停止はどのようなダイビングで行いますか？", answer: ["全てのダイビング終了時に","無限圧限界時間を超えてしまったとき","水深18m以上のダイビングの場合","水中で気分が悪くなったとき"], commentary: "すべてのダイビング終了時に、安全停止を行いましょう", four_choice: true, correct:0 ),
    Quiz(quiestion: "潜降中、マスクに押しつけられるように感じたら、どのように対処しますか？", answer: ["マスクを少し引っ張ってみる","あごを動かしてみる","そのまま我慢して和感がなくなるのを待つ","鼻から少し息を吐いてみる"], commentary: "潜降中、マスクに押しつけられるように感じたら、鼻から少し息を吐いてみる", four_choice: true, correct: 3),
    Quiz(quiestion: "エア切れの際、パティがそばにいるとき、どんな方法で浮上するのが最も安全ですか", answer: ["バディブリージング","オクトパスを使った浮上","緊急スイミングアセント","通常の浮上"], commentary: "エア切れの際、パティがそばにいるとき、オクトパスを使った浮上が最も安全である", four_choice: true, correct: 1),
    Quiz(quiestion: "水中での浮力の調整は、どんな方法で行いますか？", answer: ["ウエイトの量","BCの空気の量","肺の空気の量","以上の全て"], commentary: "水中での浮力の調整は、ウエイトの量、BCの空気の量、肺の空気の量で調整します", four_choice: true, correct: 3),
    Quiz(quiestion: "水中で、バディを見失ったらどうしますか？", answer: ["エアの限界まで水中を捜す","その場に止まって帰ってくるのを待つ","最大1分間水中を探しその後浮上し水面で待つ","1人でファンダイビングを続ける"], commentary: "水中で、バディを見失ったら、最大1分間水中を探しその後浮上し水面で待つ", four_choice: true, correct:2 ),
    Quiz(quiestion: "足のけいれんが起こったら、どのように対処しますか？", answer: ["水面で浮力を確保して緊急事態のサインを出す","けいれんした部分を強くたたく","動きを止めて痛みがなくなるのを待つ","けいれんした筋肉を伸ばし、軽くマッサージする"], commentary: "足のけいれんが起こったら、けいれんした筋肉を伸ばし、軽くマッサージする", four_choice: true, correct:3)
]
