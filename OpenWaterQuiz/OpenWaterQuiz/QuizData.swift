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
    let answer1 : String //選択肢１
    let answer2 : String //選択肢2
    let answer3 : String //選択肢3
    let answer4 : String //選択肢4
    let commentary : String //解説
    let four_choice : Bool //マルバツか４択
    let correct : String //正解

}

var QuizData = [
    Quiz(quiestion: "BCを使用する目的は？", answer1: "保温", answer2: "保護", answer3: "浮力調整", answer4: "レスキュー", commentary: "BCは空気の出し入れを行うことで浮力調整できる", four_choice:true, correct: "浮力調整"),
    Quiz(quiestion: "空気は、酸素_％に窒素_％で構成されています。", answer1: "30 69", answer2: "25 74", answer3: "21 78", answer4: "19 80", commentary: "空気は、酸素21％に窒素78％で構成されています。", four_choice:true , correct: "21 78"),
    Quiz(quiestion: "水中では空気中の何倍の速さで熱が奪われますか？", answer1: "20倍", answer2: "21倍", answer3: "25倍", answer4: "30倍", commentary: "水中では空気中の25倍の速さで熱が奪われます。", four_choice:true , correct: "25倍"),
    //Quiz(quiestion: "タンクは３年ごとに耐圧検査をしなくてはならない",answer1: "", answer2: "", answer3: "", answer4: "", commentary: "タンクは5年ごとに耐圧検査をしなくてはならない", four_choice:false ,correct: "false"),
    //Quiz(quiestion: "ダイビング中は激しい動きを避け、通常より深くゆっくりとした呼吸を行います。",answer1: "", answer2: "", answer3: "", answer4: "", commentary: "ダイビング中は激しい動きを避け、通常より深くゆっくりとした呼吸を行います。", four_choice:false,correct: "true" ),
]
