//
//  RoutineMeterApp.swift
//  RoutineMeter
//
//  Created by admin on 2024/04/23.
//

import SwiftUI

@main
struct RoutineMeterApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ContentStore(repository: RoutineRepository()))
        }
    }
}
