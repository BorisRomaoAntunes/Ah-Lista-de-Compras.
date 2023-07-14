//
//  Ah__Lista_de_ComprasApp.swift
//  Ah! Lista de Compras
//
//  Created by Boris R on 08/07/23.
//

import SwiftUI

@main
struct AhListaDeComprasApp: App {
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
