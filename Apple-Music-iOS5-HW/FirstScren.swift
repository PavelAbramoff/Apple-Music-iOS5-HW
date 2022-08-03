//
//  FirstScren.swift
//  Apple-Music-iOS5-HW
//
//  Created by Pavel Абрамов on 31.07.2022.
//

import SwiftUI

struct FirstScren: View {
    var body: some View {
        ScrollView{
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

