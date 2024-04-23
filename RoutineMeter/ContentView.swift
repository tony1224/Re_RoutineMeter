//
//  ContentView.swift
//  RoutineMeter
//
//  Created by admin on 2024/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                FeedItemView(title: "朝ストレッチ")
                FeedItemView(title: "筋トレ")
                FeedItemView(title: "コーディング")
                FeedItemView(title: "英語")
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
