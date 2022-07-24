//
//  SecondView.swift
//  Apple-Music-iOS5-HW
//
//  Created by Pavel Абрамов on 24.07.2022.
//

import SwiftUI

struct SecondView: View {
    
    @State private var showingSecondView = false
    
    var body: some View {
        NavigationView {
            ScrollView {
            }
            .navigationBarTitle("Медиатека")
        }
        
        TabBar()
            .foregroundColor(.black)
    }
}
