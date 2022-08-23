//
//  RadioView.swift
//  Apple-Music-iOS5-HW
//
//  Created by Pavel Абрамов on 05.08.2022.
//

import SwiftUI

struct RadioView: View {
    
    init() {
        UITabBar.appearance().isTranslucent = true
        UITabBar.appearance().backgroundColor = UIColor.systemGray5
    }
    
    @State var columns = Array(repeating: GridItem(.flexible(), spacing: 10), count: 2)
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: true) {
                VStack(alignment: .leading) {
                    Divider()
                    Text("Избранная радиостанция")
                        .font(.caption)
                        .foregroundColor(.gray)
                    HorizontalRadioView()
                        .frame(height: 300)
                    Divider()
                    Text("Станции")
                        .font(.title)
                        .bold()
                    
                    Button {
                        if self.columns.count == 2 {
                            self.columns.removeLast()
                        } else {
                            self.columns.append(GridItem(.flexible(), spacing: 0))
                        }
                    } label: {
                        
                        Image(systemName: self.columns.count == 2 ?
                              "rectangle.grid.1x2" : "square.grid.2x2")
                        .font(.system(size: 30))
                        .foregroundColor(.black)
                        Text("Перейти")
                    }
                }
                
                LazyVGrid(columns: self.columns){
                    ForEach(data) {radio in
                        GridView(radio: radio,columns: self.$columns)
                    }
                }
                .frame(height: 1150)
                .padding(.top, -40)
            }
            
            .padding(.leading)
            .navigationTitle("Радио")
        }
    }
}

