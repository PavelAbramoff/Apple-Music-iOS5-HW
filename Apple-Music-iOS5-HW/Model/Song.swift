//
//  Song.swift
//  Apple-Music-iOS5-HW
//
//  Created by Pavel Абрамов on 16.08.2022.
//

import SwiftUI

struct Song: Identifiable{
    
    var id = UUID().uuidString
    var name: String
    var artist: String
    var image: String
}

var songs = [
    
    Song(name: "Car", artist: "Sting", image: "s0"),
    Song(name: "France", artist: "Milen Farmer", image: "s1"),
    Song(name: "Holiwood", artist: "Dicaprio", image: "s2"),
    Song(name: "Trols", artist: "Trols", image: "s3"),
    Song(name: "Pirates", artist: "Pirates", image: "s4"),
    Song(name: "Christmas", artist: "Christmas", image: "s5"),
    Song(name: "Bach", artist: "Bach", image: "s6"),
    Song(name: "Utesov", artist: "Utesov", image: "s7"),
    Song(name: "Pirates", artist: "Pirates", image: "s8"),
    Song(name: "Impuls", artist: "Impuls", image: "s9"),
    
]

