//
//  viewLIst.swift
//  Ah! Lista de Compras
//
//  Created by Boris R on 11/07/23.
//

import SwiftUI

struct viewLIst: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: [SortDescriptor(\Item.list)]) var items: FetchedResults<Item>
    
    @StateObject var DataControllerMode = DataController()
    
    @State private var showViewAddList = false
    
    var listFake = ["Hortfrut","Mercado"]
    
    var body: some View {
        NavigationStack{
            VStack(spacing: 1){
                TitleLists()
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
                        showViewAddList = true
                    }label: {
                        Image(systemName: "plus")
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
                    .padding(.horizontal,80
                    
                    )
                    .contentShape(Circle())
                }
                
            }
            
            //MARK: Toobar button in the Navigation
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
                    Image(systemName: "gearshape.fill")
                        .font(.system(size: 30))
                        .fontWeight(.medium)
                        .foregroundColor(.black)
                }
            }
        }
        }
        .listStyle(.inset)
        .sheet(isPresented: $showViewAddList){
            FirstAcessList()
        }
    }
    func deleteIteList(at offsets: IndexSet) {
        for offset in offsets {
            let item = items[offset]
            moc.delete(item)
            DataController().save(context: moc)
        }
    }
}


struct viewLIst_Previews: PreviewProvider {
    static var previews: some View {
        viewLIst()
    }
}
