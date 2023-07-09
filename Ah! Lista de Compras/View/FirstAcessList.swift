//
//  FirstAcessList.swift
//  Ah! Lista de Compras
//
//  Created by Boris R on 08/07/23.
//

import SwiftUI

struct FirstAcessList: View {
    @FocusState private var focuImput: Bool
    
    @State var firstList = ""
    

    var body: some View {
        NavigationView{
            VStack{
                Text("Nova Lista")
                    .fontWeight(.bold)
                    .font(.system(size: 30))
                    .frame(maxWidth: .infinity)
                    .padding()
                
                VStack(alignment: .leading){
                    Text("DIGITE O NOME DA LISTA")
                        .foregroundColor(.secondary)
                    TextField("Nome da Lista", text: $firstList)
                        .focused($focuImput)
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .padding()
                        .background(.white)
                        .cornerRadius(10)
                    
                }
                .padding(.vertical, 20)
                Button{
                    
                } label: {
                    Text("ADICIONAR LISTA")
                        .foregroundColor(.black)
                        .padding(.vertical,12)
                        .padding(.horizontal)
                        .fontWeight(.bold)
                        .font(.system(size: 30))
                        .background{
                            Capsule()
                                .fill(.yellow)
                                .frame(width: 350, height: 70)
                        }
                        .contentShape(Capsule())
                        .padding()
                }
            }
            
            .padding()
            .clipShape(RoundedRectangle(cornerRadius: 60))
            .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .top)
            .background(.gray.opacity(0.45))
            
            
        }
        .onAppear{
            focuImput = true
        }
    }
}

struct FirstAcessList_Previews: PreviewProvider {
    static var previews: some View {
        FirstAcessList()
    }
}
