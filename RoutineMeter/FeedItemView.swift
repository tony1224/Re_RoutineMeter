//
//  FeedItemView.swift
//  RoutineMeter
//
//  Created by admin on 2024/04/23.
//

import SwiftUI

struct FeedItemView: View {
    private let title: String
    
    init(title: String) {
        self.title = title
    }
    
    var body: some View {
        HStack {
            Image(systemName: "checkmark.circle")
            Text(title)
        }
    }
}

struct FeedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeedItemView(title: "朝ストレッチ")
    }
}
