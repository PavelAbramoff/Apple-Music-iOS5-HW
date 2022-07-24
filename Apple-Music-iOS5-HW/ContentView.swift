//
//  ContentView.swift
//  Apple-Music-iOS5-HW
//
//  Created by Pavel Абрамов on 23.07.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
            }
            .navigationBarTitle("Медиатека")
            .navigationBarItems(trailing: HStack {
                Button("Править") {
                }
                .foregroundColor(.red)
            }
            )
        }
        VStack {
            Text("Ищите свою музыку ?")
                .font(.title)
            Text("Здесь появится купленная Вами Музыка в iTunes Store музыка")
                .lineLimit(nil)
                .font(.callout)
                .multilineTextAlignment(.center)
                .foregroundColor(.gray)
        }
        
        ZStack
    }
}
