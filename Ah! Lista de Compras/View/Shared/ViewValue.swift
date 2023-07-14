//
//  ViewValue.swift
//  Ah! Lista de Compras
//
//  Created by Boris R on 14/07/23.
//

import SwiftUI

struct ViewValue: View {
    @State var value: Decimal
    
    var body: some View {
        HStack{
            Text(value, format: .currency(code: "BRL"))
                .font(Font.custom("Nunito", size: 63))
                
                .foregroundColor(.yellow)
            // .opacity(0.40)
                .overlay(
                    Text(value, format: .currency(code: "BRL"))
                        .font(Font.custom("Nunito", size: 62))
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                        .offset(x: -5, y: -2)
                )
        }
        .frame(maxWidth: .infinity)
    }
}

struct ViewValue_Previews: PreviewProvider {
    static var previews: some View {
        ViewValue(value: 1.0)
    }
}
