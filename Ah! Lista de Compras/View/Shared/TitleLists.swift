//
//  TitleLists.swift
//  Ah! Lista de Compras
//
//  Created by Boris R on 11/07/23.
//

import SwiftUI

struct TitleLists: View {
    var body: some View {
        Text("Listas")
            .font(Font.custom("Nunito", size: 80))
            .fontWeight(.black)
            .foregroundColor(.yellow)
            .shadow(radius: 2)
            
    }
}

struct TitleLists_Previews: PreviewProvider {
    static var previews: some View {
        TitleLists()
    }
}
