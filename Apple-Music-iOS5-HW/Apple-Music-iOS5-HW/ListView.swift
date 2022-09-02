//
//  ListView.swift
//  Apple-Music-iOS5-HW
//
//  Created by Pavel Абрамов on 28.07.2022.
//

import SwiftUI

struct ListView: View {
    
    @State private var editMode = EditMode.active
    @State private var courses = DevTechieCourse.sample
    @State private var selectedItem = Set<UUID>()
    
    var body: some View {
            List(selection: $selectedItem) {
                ForEach(courses, id: \.self) { title in
                    HStack {
                        Image(systemName: title.imageName)
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.red)
                            .frame(width: 25, height: 25)
                            .padding([.top, .bottom, .trailing], 5)
                        Text(title.name)
                            .font(.none)
                    }
                }
                .onMove(perform: move)
                .onDelete(perform: onDelete)
            }
            .listStyle(InsetListStyle())
    }
    
    func onDelete(offsets: IndexSet) {
        courses.remove(atOffsets: offsets)
    }
    
    func move(from source: IndexSet, to destination: Int) {
        courses.move(fromOffsets: source, toOffset: destination)
    }
}
