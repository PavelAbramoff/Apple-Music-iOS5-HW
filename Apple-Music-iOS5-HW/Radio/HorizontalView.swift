//
//  HorizontalView.swift
//  Apple-Music-iOS5-HW
//
//  Created by Pavel Абрамов on 06.08.2022.
//

import SwiftUI

struct HorizontalRadioView: View {
    
    private let albums = RadioView().getAlbums()
    
    private let rows = [
        GridItem(.fixed(300))
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows) {
                ForEach(albums, id: \.self) { album in
                    VStack(alignment: .leading) {
                        Text(album.name)
                            .foregroundColor(.black)
                            .font(.callout)
                        Text("Станция Apple Music")
                            .foregroundColor(.gray)
                        album.image
                            .resizable()
                            .frame(width: 300,
                                   height: 200,
                                   alignment: .leading)
                            .cornerRadius(15)
                            .shadow(radius: 3)
                    }
                }
            }
            Spacer()
        }
    }
}

struct HorizontalRadioView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalRadioView()
    }
}
