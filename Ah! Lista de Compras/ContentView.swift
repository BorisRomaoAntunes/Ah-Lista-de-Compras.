//
//  ContentView.swift
//  Ah! Lista de Compras
//
//  Created by Boris R on 08/07/23.
//
// Imagem logo 1024×1024 fundo branco

import SwiftUI

struct ContentView: View {
    @State private var scale: CGFloat = 1.0
    @State private var isShowList = false
    @FocusState var focuImpu: Bool
    
    
    var body: some View {
        VStack{
            ZStack {
                Group {
                    Image("AH lista de Compras")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 300)
                        .scaleEffect(scale)
            
                    Text("ListAH!")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                        .frame(width: 350, height: 250, alignment: .bottom)
                }
                .position(x: 180,y: 300)
                Spacer()
            }
            Button{
                isShowList.toggle()
                

                
            } label: {
                Text("ADICIONAR")
                    .foregroundColor(.black)
                    .padding(.vertical,12)
                    .padding(.horizontal)
                    .fontWeight(.bold)
                    .font(.system(size: 30))
                    .background{
                        Capsule()
                            .fill(.yellow)
                            .frame(width: 250, height: 70)
                    }
                    .contentShape(Capsule())
                    .padding(2)
            }
            .sheet(isPresented: $isShowList) {
                FirstAcessList()
                    .presentationDetents([.fraction(0.40)]) // quanto a view modal ira parecer no tela
            }
            .shadow(radius: 30)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
