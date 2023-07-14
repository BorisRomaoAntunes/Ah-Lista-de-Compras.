//
//  ScreenHomeFirstViewModel.swift
//  Ah! Lista de Compras
//
//  Created by Boris R on 11/07/23.
//

import Foundation

class ScreenHomeFirstViewMode: ObservableObject {
    
    
    @Published var isShowVewCreatorNewList = false
    @Published var NewList = ""
    

    func NewListToogle(){
        isShowVewCreatorNewList.toggle()
    }
}
