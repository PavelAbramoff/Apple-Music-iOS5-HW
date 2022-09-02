//
//  TabBar.swift
//  Apple-Music-iOS5-HW
//
//  Created by Pavel Абрамов on 24.07.2022.
//

import SwiftUI

struct TabBar: View {
    @State var current = 2
    
    var body: some View {
        
        ZStack {
            TabView {
                ContentView() // ВЬЮШКА ДЛЯ ТАББАРА
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Медиатека")
                    }
                RadioView()// ТУТ БУДЕТ ДРУГАЯ ВЬЮШКА ДЛЯ ТАББАРА
                    .tabItem {
                        Image(systemName: "dot.radiowaves.left.and.right")
                        Text("Радио")
                    }
                Text("SEARCH") // ТУТ БУДЕТ ДРУГАЯ ВЬЮШКА ДЛЯ ТАББАРА
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Поиск")
                    }
            }
            .accentColor(.red)
            MiniPlayer()
                .padding(.bottom, 40)
        }
    }
}
