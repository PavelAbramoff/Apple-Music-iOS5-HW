//
//  ModelHorizontalView.swift
//  Apple-Music-iOS5-HW
//
//  Created by Pavel Абрамов on 07.08.2022.
//

import SwiftUI

struct Albums: Hashable {
    let name: String
    var albumImageName: String

    var image: Image {
        Image(albumImageName)
    }
}
