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
                        .font(.title)
                if QuizData.four_choice{
                    ForEach(QuizData.answer.indices){index in
                        Button(action: {
                            onAnswerSelected(index == QuizData.correct)
                        }) {
                            Text(QuizData.answer[index])
                                .frame(width: 200,height: 50)
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.blue)
                                .cornerRadius(10)
                        }
                        .padding()                }
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
    var quiz : [Quiz] = OpenQuiz.shuffled()
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
            .navigationBarBackButtonHidden(true)
            .sheet(isPresented:$showingSheet){
                WrongView(QuizData:quiz[currentIndex])
            }
        }else{
            Text("終了")
                .font(.title)
                .padding()
//            Button(action:{
//                StartView()
//            }){
//                Text("ホームに戻る")
//                    .font(.title)
//            }
        }
    }
}

//不正解時に下から解説を出す
struct WrongView:View{
    let QuizData : Quiz
    var body: some View{
            VStack{
                Spacer()
                Text("不正解")
                    .font(.largeTitle)
                    .foregroundColor(.red)
                Spacer()
                Text("\(QuizData.commentary)")
                    .font(.title3)
                    .padding()
                Spacer()
            }
    }
}

struct StartView:View{
    
    var body: some View{
        VStack{
            Spacer()
            Text("オープンウォータライセンス\nクイズ")
                .multilineTextAlignment(.center)
                .font(.title)
            Spacer()
            NavigationLink(destination: flowView()){
                HStack {
                    Image(systemName: "play.circle")
                    Text("START")
                }.font(.title)
            }
            Spacer()
        }
    }
}
