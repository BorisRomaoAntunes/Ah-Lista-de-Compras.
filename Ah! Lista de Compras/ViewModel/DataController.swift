//
//  DataController.swift
//  Ah! Lista de Compras
//
//  Created by Boris R on 11/07/23.
//

import Foundation
import CoreData

class DataController: ObservableObject {
    @Published var firstList = ""
    
    let container = NSPersistentContainer(name: "ItemCoreData")

    init(){
        container.loadPersistentStores{ desc, error in
            if let error = error {
                print("**Failed to load the data \(error.localizedDescription)**")
            }
            print("*** Dados Carragador com sucessos! ***")
        }
    }

    func save(context: NSManagedObjectContext){
        do{
            try context.save()
            print("** Item Salva em CoreData **")
        } catch {
            print("** Item Não Salva em CoreData **")
        }
    }
    
    func AddNewList(nameList: String, context: NSManagedObjectContext){
        let list = Item(context: context)
        list.id = UUID()
        list.list = nameList
        list.name = ""
        list.check = false
        list.value = 0.0
        list.amount = 0
        save(context: context)
    }
    
    
}
