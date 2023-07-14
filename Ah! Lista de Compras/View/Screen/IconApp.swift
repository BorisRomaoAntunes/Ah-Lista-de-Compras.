//
//  IconApp.swift
//  Ah! Lista de Compras
//
//  Created by Boris R on 11/07/23.
//

import SwiftUI

struct IconApp: View {
    @State private var imageLogo = "AH lista de Compras"
    var body: some View {
        ZStack{
            Image(imageLogo)
                .resizable()
                .scaledToFit()
                
            Text("ListAH!")
                .offset(x: 0, y: 100)
                .font(.system(size: 30))
                .fontWeight(.bold)
        }
        .frame(width: 300, height: 300)
    }
}

struct IconApp_Previews: PreviewProvider {
    static var previews: some View {
        IconApp()
    }
}
