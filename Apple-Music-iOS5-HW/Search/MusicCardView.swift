//
//  MusicCardView.swift
//  Apple-Music-iOS5-HW
//
//  Created by Pavel Абрамов on 16.08.2022.
//

import SwiftUI

struct MusicCardView: View {
    var song: Song
    var body: some View {
        
        HStack(spacing: 15){
            Image(song.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 60)
                .cornerRadius(15)
            
            VStack(alignment: .leading, spacing: 8, content: {
                Text(song.name)
                    .fontWeight(.bold)
                Text(song.artist)
                    .font(.caption)
                    .foregroundColor(.gray)
            })
            .frame(maxWidth: .infinity, alignment: .leading)
            
            //Button...
            Button(action: {}, label: {
                Image(systemName: "rectangle.and.pencil.and.ellipsis")
                    .foregroundColor(Color.black)
                    .padding()
            })
        }
        .padding(.horizontal)
        Divider()
    }
}

struct MusicCardView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

