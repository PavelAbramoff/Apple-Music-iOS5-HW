//
//  SearchViewUIKit.swift
//  Apple-Music-iOS5-HW
//
//  Created by Pavel Абрамов on 02.09.2022.
//

import SwiftUI
import UIKit

struct SearchViewUI: UIViewControllerRepresentable {

    func makeUIViewController(context: Context) -> UIViewController {
        let searchViewController = MusicList()
        let searchNavigationController = UINavigationController(rootViewController: searchViewController)

        return searchNavigationController
    }

    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}
