//
//  ContentView.swift
//  Apple-Music-iOS5-HW
//
//  Created by Pavel Абрамов on 23.07.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var mainScreen = true
    
    var body: some View {
        NavigationView {
            screenView
                .navigationBarTitle("Медиатека")
                .navigationBarItems(
                    trailing: Button(
                        action: { mainScreen.toggle() },
                        label: { Text(lableChange()) }
                    )
                )
                .environment(\.editMode,
                              .constant(mainScreen ?
            EditMode.inactive: EditMode.active))
        }
    }
    
    @ViewBuilder private var screenView: some View {
        if mainScreen {
            FirstScren()
        }else{
            ListView()
        }
    }
    
    private func lableChange() -> String {
        mainScreen ? "Править" : "Готово"
    }
}

