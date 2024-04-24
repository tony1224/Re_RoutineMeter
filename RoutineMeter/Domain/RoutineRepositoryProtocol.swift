//
//  RoutineRepositoryProtocol.swift
//  RoutineMeter
//
//  Created by admin on 2024/04/24.
//

import Foundation

protocol RoutineRepositoryProtocol {
    func findAll() async throws -> [Routine]
}

class RoutineRepository: RoutineRepositoryProtocol {
    func findAll() async throws -> [Routine] {
        []
    }
}
