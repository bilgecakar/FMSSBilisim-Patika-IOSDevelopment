//
//  Task.swift
//  TodoApp
//
//  Created by Bilge Çakar on 25.09.2022.
//

import Foundation
import CoreData

class Task {
    
    private let modelName: String
    
    //Represent model name
    init(modelName: String) {
        self.modelName = modelName
    }
    
    //Represent container
    private lazy var storeContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: modelName)
        container.loadPersistentStores { _, error in
            if let error = error {
                print("Unsuccesfull ontainer loading...\(error.localizedDescription)")
            }
        }
        return container
    }()
    
    lazy var managedContext: NSManagedObjectContext = self.storeContainer.viewContext
    
    func saveContext() {
        //If there is changes,save
        guard managedContext.hasChanges else {
            return
        }
        
        do {
            try managedContext.save()
        } catch let error as NSError {
            print("Unsolved error...\(error.localizedDescription)")
        }
    }
}
