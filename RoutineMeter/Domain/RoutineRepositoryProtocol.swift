//
//  RoutineRepositoryProtocol.swift
//  RoutineMeter
//
//  Created by admin on 2024/04/24.
//

import Foundation

protocol RoutineRepositoryProtocol {
    func findAll() async throws -> [Routine]
    func add(routine: Routine) async throws
}

class RoutineRepository: RoutineRepositoryProtocol {
    func findAll() async throws -> [Routine] {
        // TODO: SwiftData対応
        []
    }

    func add(routine: Routine) async throws {
        // TODO: SwiftData対応
    }
}
