//
//  ContentView.swift
//  RoutineMeter
//
//  Created by admin on 2024/04/23.
//

import SwiftUI

struct ContentView: View {
    private let routineItems: [String] = [
        "朝ストレッチ", "筋トレ", "コーディング", "英語"
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(routineItems, id: \.self) { item in
                    FeedItemView(title: item)
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
