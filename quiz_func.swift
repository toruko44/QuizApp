//
//  quiz_func.swift
//  OpenWaterQuiz
//
//  Created by 中道徹 on 2023/04/08.
//

import SwiftUI
//解答画面
//不正解時sheetを出す
//問題表示画面をViewにしたらいけるかも
struct QuizView:View{
//    @State var sheet : Bool = false
    let QuizData : Quiz
    let onAnswerSelected: (Bool) -> Void
    var body: some View{
            VStack{
                Text("\(QuizData.quiestion)")
                        .padding(.vertical)
                if QuizData.four_choice{
                    ForEach(QuizData.answer.indices){index in
                        Button(action: {
                            onAnswerSelected(index == QuizData.correct)
                        }) {
                            Text(QuizData.answer[index])
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.blue)
                                .cornerRadius(10)
                        }
                        .padding()
                }
                }else{
                    HStack {
                        Spacer()
                        Button(action: {
                            onAnswerSelected(1 == QuizData.correct)
                        }) {
                            Image(systemName: "circle")
                                .resizable()
                                .frame(width: 70, height: 70)
                                .foregroundColor(.blue)
                        }
                        .padding()
                        Spacer()
                        Button(action: {
                            onAnswerSelected(2 == QuizData.correct)
                        }) {
                            Image(systemName: "xmark")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .foregroundColor(.red)
                        }
                        .padding()
                        Spacer()
                    }
                }
            }
    }
}

struct flowView : View {
    @State var currentIndex = 0
    @State var quiz : [Quiz] = OpenQuiz
    @State private var showingSheet = false
    var body: some View{
        if currentIndex < quiz.count{
            QuizView(QuizData:quiz[currentIndex]){ isCorrect in
                if isCorrect{
                    currentIndex += 1
                }else{
                    showingSheet = true
                }
                }
            .sheet(isPresented:$showingSheet){
                WrongView(QuizData:quiz[currentIndex])
            }
        }else{
            Text("終了")
                .font(.title)
                .padding()
        }
    }
}

//不正解時に下から解説を出す
struct WrongView:View{
    let QuizData : Quiz
    var body: some View{
        VStack{
            VStack{
                Text("不正解")
                    .font(.title)
                Spacer()
                Text("\(QuizData.commentary)")
                    .font(.title3)
                Spacer()
            }
        }
    }
}

//func delay(number:Int) -> Int{
//    var nextnumber = number + 1
//    return nextnumber
//}
