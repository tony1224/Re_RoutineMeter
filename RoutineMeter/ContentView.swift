//
//  ContentView.swift
//  RoutineMeter
//
//  Created by admin on 2024/04/23.
//

import SwiftUI

struct ContentView: View {
    private let titles: [String] = [
        "朝ストレッチ", "筋トレ", "コーディング", "英語"
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(titles, id: \.self) { title in
                    FeedItemView(title: title)
                }
            }
            .navigationBarTitle("日課メーター", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(.light)
    }
}
