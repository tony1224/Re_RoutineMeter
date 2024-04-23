//
//  FeedItemView.swift
//  RoutineMeter
//
//  Created by admin on 2024/04/23.
//

import SwiftUI

struct FeedItemView: View {
    private let title: String
    @State private var isTapped: Bool = false
    
    init(title: String) {
        self.title = title
    }
    
    var body: some View {
        HStack {
            Image(systemName: isTapped ? "checkmark.circle.fill" : "checkmark.circle")
            Button {
                isTapped.toggle()
            } label: {
                Text(title)
                    .foregroundStyle(.black)
            }
        }
    }
}

struct FeedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeedItemView(title: "朝ストレッチ")
    }
}
