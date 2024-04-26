//
//  BackgroundClearView.swift
//  RoutineMeter
//
//  Created by admin on 2024/04/27.
//

import Foundation
import UIKit
import SwiftUI

struct BackgroundClearView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        DispatchQueue.main.async {
            view.superview?.superview?.backgroundColor = .clear
        }
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
}
