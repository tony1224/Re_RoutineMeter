//
//  ContentStore.swift
//  RoutineMeter
//
//  Created by admin on 2024/04/24.
//

import Foundation
import Combine

@MainActor
class ContentStore: ObservableObject {
    @Published private(set) var values: [Routine] = []
    private let repository: RoutineRepositoryProtocol
    
    init(repository: RoutineRepositoryProtocol) {
        self.repository = repository
    }

    func getRoutines() async throws {
        values = try await repository.findAll()
    }
    
    func addRoutine(name: String) async throws {
        let routine = Routine(id: UUID().uuidString, title: name)
        try await repository.add(routine: routine)
        values.append(routine)
    }

}
