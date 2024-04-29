//
//  ContentView.swift
//  RoutineMeter
//
//  Created by admin on 2024/04/23.
//

import SwiftUI

struct ContentView: View {
    @State private var shouldShowAlert: Bool = false
    @State private var errorMessage: String = ""
    @State private var isPresented: Bool = false
    @EnvironmentObject var contentStore: ContentStore
    var items: [Routine] {
        contentStore.values
    }

    func load() async {
        do {
            try await contentStore.getRoutines()
        } catch {
            shouldShowAlert = true
            errorMessage = error.localizedDescription
        }
    }

    func add(title: String) async {
        do {
            try await contentStore.addRoutine(name: title)
        } catch {
            shouldShowAlert = true
            errorMessage = error.localizedDescription
        }
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                List {
                    ForEach(items, id: \.id) { item in
                        FeedItemView(title: item.title)
                    }
                }
                .navigationBarTitle("日課メーター", displayMode: .inline)
                .navigationBarItems(trailing: Button{
                    withAnimation {
                        isPresented.toggle()
                    }
                } label: {
                    Image(systemName: "plus.circle")
                        .foregroundStyle(.black)
                })
                .task {
                    await load()
                }
                .alert("Error", isPresented: $shouldShowAlert, actions: {}, message: {
                    Text(errorMessage)
                })

                if isPresented {
                    RoutineAddView(isPresented: $isPresented, addAction: { title in
                        print(title)
                        Task {
                            await add(title: title)
                        }
                    })
                        .transition(.opacity)
                        .zIndex(10)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(.light)
            .environmentObject(ContentStore(repository: PreviewRoutineRepository()))
    }
}

private class PreviewRoutineRepository: RoutineRepositoryProtocol {
    private var values: [Routine] = []
    
    func findAll() async throws -> [Routine] {
        values = [
            .init(id: "1", title: "朝ストレッチ"),
            .init(id: "2", title: "筋トレ"),
            .init(id: "3", title: "コーディング"),
            .init(id: "4", title: "英語")
        ]
        return values
    }

    func add(routine: Routine) async throws {
        self.values.append(routine)
    }
    
}
