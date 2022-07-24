//
//  ContentView.swift
//  Apple-Music-iOS5-HW
//
//  Created by Pavel Абрамов on 23.07.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showingSecondView = false
    
    var body: some View {
        NavigationView {
            ScrollView {
            }
            .navigationBarTitle("Медиатека")
            .navigationBarItems(trailing: HStack {
                Button(action: {
                    self.showingSecondView.toggle()
                }) {
                    Text("Править")
                } .fullScreenCover(isPresented: $showingSecondView) {
                    SecondView()
                        
                }
                .foregroundColor(.red)
            })
        }
        VStack {
            Text("Ищите свою музыку ?")
                .font(.title.bold())
                .foregroundColor(.black)
            Text("Здесь появится купленная Вами Музыка в iTunes Store музыка")
                .lineLimit(nil)
                .font(.callout.bold())
                .multilineTextAlignment(.center)
                .foregroundColor(.gray)
        }
        TabBar()
    }
}
