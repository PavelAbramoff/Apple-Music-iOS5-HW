//
//  RadioView.swift
//  Apple-Music-iOS5-HW
//
//  Created by Pavel Абрамов on 05.08.2022.
//

import SwiftUI

struct RadioView: View {
    
    @State var index = 0
    @State var columns = Array(repeating: GridItem(.flexible(), spacing: 15), count: 2)
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            
            LazyVStack{
                
                HStack{
                    
                    Text("Radio")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Spacer()
                }
                
                Divider()
                
                    .padding(.horizontal)
                
                HStack(alignment: .firstTextBaseline, spacing: 10) {
                    
                    Text("Станция Apple Music")
                        .foregroundColor(.gray)
                        .fontWeight(.bold)
                        .lineLimit(1)
                }
                
                TabView(selection: self.$index) {
                    ForEach(0...4,id: \.self) { index in
                        Image("p\(index)")
                            .resizable()
                        // add animation
                            .frame(height: self.index == index ? 180 : 140)
                            .cornerRadius(20)
                            .padding(.horizontal)
                            .tag(index)
                    }
                    
                }
                
                .frame(height: 180)
                .padding(.top)
                .tabViewStyle(PageTabViewStyle())
                .animation(.easeOut)
                
                Divider()
                
                HStack{
                    
                    Text("Cтанции")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    Button {
                        
                        if self.columns.count == 2{
                            
                            self.columns.removeLast()
                        }
                        else {
                            self.columns.append(GridItem(.flexible(), spacing: 1))
                        }
                        
                    } label: {
                        Image(systemName: self.columns.count == 2 ?
                              "rectangle.grid.1x2" : "square.grid.2x2")
                        .font(.system(size: 24))
                        .foregroundColor(.black)
                        
                    }
                }
                .padding(.horizontal)
                .padding(.top,25)
                
                LazyVGrid(columns: self.columns){
                    ForEach(data){radio in
                        
                        GridView(radio: radio,columns: self.$columns)
                    }
                }
                .padding([.horizontal,.vertical])
            }
            .padding(.vertical)
        }
    }
}
