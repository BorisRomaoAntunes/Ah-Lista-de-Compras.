//
//  viewListItens.swift
//  Ah! Lista de Compras
//
//  Created by Boris R on 11/07/23.
//

import SwiftUI

struct viewListItens: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: [SortDescriptor(\Item.name)]) var items: FetchedResults<Item>
    
    var valueInList: Decimal  = 10.00
    
    
    var body: some View {
        
        NavigationView {
            VStack(spacing: 1){
                ViewValue(value: valueInList)
                    .padding(40)
                
                Rectangle()
                    .stroke()
                    .frame(height: 0.3)
                    .foregroundColor(.gray)
                    .opacity(0.2)
                    .padding(.vertical, 2)
                    
        
                
                List{
                    ForEach(items){ item in
                        Text(item.list ?? "Sem Nome")
                            .font(.system(size: 30))
                            .fontWeight(.bold)
                            .padding(2)
                    }
                    .onDelete(perform: deleteIteList)
                }
                
                
            //MARK: Button add item em list
                .overlay(alignment: .bottomTrailing){
                    Button{
                        
                    }label: {
                        Image(systemName: "plus")
                            .font(Font.custom("Nunito", size: 63))
                            .foregroundColor(.black)
                            .font(.system(size: 30))
                            .fontWeight(.bold)
                            .frame(width: 60,height: 60)
                            .background(.yellow)
                            .clipShape(Circle())
                            .frame(width: 20, height: 30)
                        
                    }
                    .shadow(radius: 6, x: 4, y: 5)
                    .padding(.vertical,50)
                    .padding(.horizontal,80)
                }
                
            }
            .toolbar{
                ToolbarItemGroup(placement: .navigationBarLeading){
                    Button{
                       
                    }label: {
                        Image(systemName: "arrow.backward")
                            .contentShape(Circle())
                            .font(.system(size: 30))
                            .fontWeight(.medium)
                            .foregroundColor(.black)
                    }
                }
                ToolbarItemGroup(placement: .navigationBarTrailing
                ){
                    Button{
                        
                    }label: {
                        Image(systemName: "line.3.horizontal")
                            .font(.system(size: 30))
                            .fontWeight(.medium)
                            .foregroundColor(.black)
                    }
                }
            }
        }
        

    }
    func deleteIteList(at offsets: IndexSet) {
        for offset in offsets {
            let item = items [offset]
            moc.delete(item)
            DataController().save(context: moc)
        }
    }
}

struct viewListItens_Previews: PreviewProvider {
    static var previews: some View {
        viewListItens()
    }
}
