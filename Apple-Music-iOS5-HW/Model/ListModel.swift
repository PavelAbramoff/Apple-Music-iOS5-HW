//
//  Model.swift
//  Apple-Music-iOS5-HW
//
//  Created by Pavel Абрамов on 28.07.2022.
//

import SwiftUI

struct DevTechieCourse: Identifiable, Hashable {
    
    var imageName: String
    let id = UUID()
    var name: String
    
    var image: Image {
        Image(imageName)
    }
}

extension DevTechieCourse {
    static var sample: [DevTechieCourse]
    {
        [
            DevTechieCourse(imageName:"music.note.list", name:"Плейлисты"),
            DevTechieCourse(imageName:"person.2.crop.square.stack", name:"Альбомы"),
            DevTechieCourse(imageName:"music.mic", name:"Артисты"),
            DevTechieCourse(imageName:"display", name:"Телешоу"),
            DevTechieCourse(imageName:"music.note.tv", name:"Видеоклипы"),
            DevTechieCourse(imageName:"guitars", name:"Жанры"),
            DevTechieCourse(imageName:"music.quarternote.3", name:"Авторы"),
            DevTechieCourse(imageName:"icloud.and.arrow.down", name:"Загружено"),
            DevTechieCourse(imageName:"music.note.house", name:"Домашняя коллекция")
        ]
    }
}

