//
//  Model-Radio.swift
//  Apple-Music-iOS5-HW
//
//  Created by Pavel Абрамов on 05.08.2022.
//

import SwiftUI

struct Radio: Identifiable {
    
    var id: Int
    var name: String
    var image: String
    var rating: Int
}

var data = [
    Radio(id: 0, name: "Детские песни", image: "g1", rating: 1),
    Radio(id: 1, name: "Африканская музыка", image: "g2", rating: 2),
    Radio(id: 2, name: "Хип-хоп и R&B", image: "g3", rating: 3),
    Radio(id: 3, name: "Хип-хоп", image: "g4", rating: 4),
    Radio(id: 4, name: "Хиты 2000-х", image: "g5", rating: 5),
    Radio(id: 5, name: "Хиты 2010-х", image: "g6", rating: 6),
    Radio(id: 6, name: "Хиты на все времена", image: "g7", rating: 7),
    Radio(id: 7, name: "Lo-Fi", image: "g8", rating: 8)
]
