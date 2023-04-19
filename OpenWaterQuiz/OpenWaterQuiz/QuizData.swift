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
    Quiz(quiestion: "空気は、酸素_％に窒素_％で構成されています。", answer :["30 69","25 74","21 78","19 80"], commentary: "空気は、酸素21％に窒素78％で構成されています。", four_choice:true , correct: 2),
    Quiz(quiestion: "水中では空気中の何倍の速さで熱が奪われますか？", answer : ["20倍","21倍","25倍","30倍"], commentary: "水中では空気中の25倍の速さで熱が奪われます。", four_choice:true , correct: 2),
    Quiz(quiestion: "タンクは３年ごとに耐圧検査をしなくてはならない",answer: [], commentary: "タンクは5年ごとに耐圧検査をしなくてはならない", four_choice:false ,correct: 2),
    Quiz(quiestion: "ダイビング中は激しい動きを避け、通常より深くゆっくりとした呼吸を行います。",answer: [], commentary: "ダイビング中は激しい動きを避け、通常より深くゆっくりとした呼吸を行います。", four_choice:false,correct: 1 ),
]
