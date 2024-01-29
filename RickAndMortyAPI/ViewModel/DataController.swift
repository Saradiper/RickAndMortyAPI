//
//  DataController.swift
//  RickAndMortyAPI
//
//  Created by Sara Diaz Perez on 28/1/24.
//

import CoreData
import Foundation

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "RickAndMortyAPI")
    var saveTask: Task<Void, Error>?
    
    @Published var selectedCharacter: CachedCharacter?

    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed: \(error.localizedDescription)")
            }

            //Unic attribute using constraints
            self.container.viewContext.mergePolicy = NSMergePolicy.mergeByPropertyObjectTrump
        }
    }
    
    func save() {
            guard container.viewContext.hasChanges else { return }
            try? container.viewContext.save()
        }
    
    func updateData(_ change: Any) {
        saveTask?.cancel()
                
                saveTask = Task {
                    @MainActor in
                    try await Task.sleep(nanoseconds: 5)
                    save()
                }
    }
}
