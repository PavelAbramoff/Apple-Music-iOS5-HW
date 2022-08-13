//
//  BlurView.swift
//  Apple-Music-iOS5-HW
//
//  Created by Pavel Абрамов on 24.07.2022.
//

import SwiftUI

struct BlurView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style:
                .systemChromeMaterial))
        return view
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
    }
}

