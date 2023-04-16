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
                NavigationLink(destination: QuizView(num:0)){
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
struct Wrong_Previews: PreviewProvider {
    static var previews: some View {
        WrongView()
    }
}
