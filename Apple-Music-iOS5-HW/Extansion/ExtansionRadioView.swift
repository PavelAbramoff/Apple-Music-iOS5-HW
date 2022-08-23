//
//  ExtansionRadioView.swift
//  Apple-Music-iOS5-HW
//
//  Created by Pavel Абрамов on 07.08.2022.
//

import Foundation

extension RadioView {
    
    func getAlbums() -> [Albums] {
        [
         Albums(name: "Хиты", albumImageName: "p0"),
         Albums(name: "Чилаут", albumImageName: "p1"),
         Albums(name: "Классика рока", albumImageName: "p2")
        ]
    }
}
