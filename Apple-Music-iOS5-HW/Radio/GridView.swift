//
//  GridView.swift
//  Apple-Music-iOS5-HW
//
//  Created by Pavel Абрамов on 05.08.2022.
//

import SwiftUI

struct GridView: View {
    
    var radio: Radio
    @Binding var columns: [GridItem]
    
    var body: some View {
        VStack {
            if self.columns.count == 2 {
                VStack(spacing: 15){
                    ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top)) {
                        Image(radio.image)
                            .resizable()
                            .frame(width: 150, height: 150, alignment: .leading)
                            .cornerRadius(5)
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "heart.fill")
                                .foregroundColor(.red)
                                .padding(.all,5)
                                .background(Color.white)
                                .clipShape(Circle())
                        }
                        .padding(.all,10)
                    }
                    
                    Spacer()
                    
                    Text(radio.name)
                        .fontWeight(.bold)
                        .lineLimit(1)
                    Text("Станция Apple Music")
                        .padding(.vertical, 1)
                        .font(.subheadline)
                        .lineLimit(2)
                        .foregroundColor(.gray)
                    }
                } else {
                
                HStack(spacing: 15){
                    ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top)) {
                        Image(radio.image)
                            .resizable()
                            .frame(width: 100, height: 100, alignment: .leading)
                            .cornerRadius(5)
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "heart.fill")
                                .foregroundColor(.red)
                                .padding(.all,5)
                                .background(Color.white)
                                .clipShape(Circle())
                        }
                        .padding(.all,10)
                        
                    }
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text(radio.name)
                            .fontWeight(.bold)
                            .lineLimit(1)
                        Text("Станция Apple Music")
                            .padding(.vertical, 1)
                            .lineLimit(1)
                            .foregroundColor(.gray)
                    }
                    Spacer(minLength: 10)
                }
                Divider()
            }
        }
    }
}
