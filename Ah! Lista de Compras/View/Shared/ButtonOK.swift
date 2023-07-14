//
//  ButtonOK.swift
//  Ah! Lista de Compras
//
//  Created by Boris R on 11/07/23.
//

import SwiftUI

struct ButtonOK: View {
    var body: some View {
        Text("OK")
            .frame(width: 40, height: 40)
            .font(.system(size: 25))
            .fontWeight(.heavy)
            .padding(6)
            .background(.yellow)
            .clipShape(Circle())
            .contentShape(Circle())
    }
}


struct ButtonOK_Previews: PreviewProvider {
    static var previews: some View {
        ButtonOK()
    }
}
