//
//  CriatingFirstListaVIewMode.swift
//  Ah! Lista de Compras
//
//  Created by Boris R on 11/07/23.
//

import Foundation
class CriatingFirstListaVIewMode: ObservableObject {
    @Published var showingList = false
    
    func toogleShowingList () {
        showingList.toggle()
    }
}

