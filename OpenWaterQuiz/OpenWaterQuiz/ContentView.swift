//
//  ContentView.swift
//  OpenWaterQuiz
//
//  Created by 中道徹 on 2023/04/07.
//

import SwiftUI

//最初の画面
struct ContentView: View {
    //let QuizData = QuizDataOriginal.shuffled()
    var body: some View {
        NavigationView{
            VStack{
                Spacer()
                Text("オープンウォータライセンス\nクイズ")
                    .multilineTextAlignment(.center)
                    .font(.title)
                Spacer()
                NavigationLink(destination: QuizView(num:2)){
                    HStack {
                        Image(systemName: "play.circle")
                        Text("START")
                    }.font(.title)
                }
                Spacer()
            }
        }
    }
}

//解答画面
//不正解時sheetを出す
//問題表示画面をViewにしたらいけるかも
struct QuizView:View{
    @State var choice : String?
    @State var sheet : Bool = false
    @State var num : Int
    var body: some View{
        ZStack{
            if QuizData[num].correct == choice{
                Image(systemName: "circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.top,30)
                    .frame(width: 250,height: 250)
            }
            VStack{
                    Text("\(QuizData[num].quiestion)")
                        .padding(.vertical)
                    Button("\(QuizData[num].answer1)"){
                        choice = QuizData[num].answer1
                        if choice != QuizData[num].correct{
                            sheet = true
                        }
                    }
                    .padding(.vertical)
                    .sheet(isPresented:$sheet){
                        WrongView()
                    }
                    Button("\(QuizData[num].answer2)"){
                        choice = QuizData[num].answer2
                        if choice != QuizData[num].correct{
                            sheet = true
                        }
                    }
                    .padding(.vertical)
                    .sheet(isPresented:$sheet){
                        WrongView()
                    }
                    Button("\(QuizData[num].answer3)"){
                        choice = QuizData[num].answer3
                        if choice != QuizData[num].correct{
                            sheet = true
                        }
                    }
                    .padding(.vertical)
                    .sheet(isPresented:$sheet){
                        WrongView()
                    }
                    Button("\(QuizData[num].answer4)"){
                        choice = QuizData[num].answer4
                        if choice != QuizData[num].correct{
                            sheet = true
                        }
                    }
                    .padding(.vertical)
                    .sheet(isPresented:$sheet){
                        WrongView()
                    }
                }
        }
    }
}
//不正解時に下から解説を出す
struct WrongView:View{
    var body: some View{
        VStack{
            VStack{
                Image(systemName: "multiply")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.top,30)
                    .frame(width: 250,height: 250)
                Spacer()
                Text("\(QuizData[0].commentary)")
                    .font(.title3)
                Spacer()
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView(num:0)
    }
}
