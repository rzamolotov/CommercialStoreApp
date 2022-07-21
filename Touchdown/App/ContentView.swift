//
//  ContentView.swift
//  Touchdown
//
//  Created by Роман Замолотов on 16.07.2022.
//

import SwiftUI
import CoreData

struct ContentView: View {
//    @Environment(\.managedObjectContext) private var viewContext

//    @FetchRequest(
//        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
//        animation: .default)
//    private var items: FetchedResults<Item>
// MARK: - Properties

// MARK: - Body
    
    var body: some View {
    ZStack {
        VStack(spacing: 1) {
            NavigationBarrView()
                .padding(.horizontal, 15)
                .padding(.bottom)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                .background(Color.white)
                .shadow(color: Color.black.opacity(0.05), radius: 5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 5)
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack(spacing: 0) { 
                    FeaturedTabView()
                        .padding(.vertical, 20)
                    
                    CategoryGridView()
                    
                    TitleView(title: "Helmets")
                    
                    LazyVGrid(columns: gridLayout, spacing: 15, content: {
                      ForEach(products) { product in
                        ProductItemView(product: product)
                          .onTapGesture {
                            feedback.impactOccurred()
                            
                          }
                      } //: LOOP
                    }) //: GRID
                    .padding(15)
                    
                    TitleView(title: "Brands")
                    
                    BrandGridView()
                    
                    FooterView()
                        .padding(.horizontal)
                }// END: VStack
            })//END: Scroll
           
        }//END: VStack
        .background(colorBackground.ignoresSafeArea(.all, edges: .all))
    } //END: ZStack
    .ignoresSafeArea(.all, edges: .top)
}
}
//    var body: some View {
//        List {
//            ForEach(items) { item in
//                Text("Item at \(item.timestamp!, formatter: itemFormatter)")
//            }
//            .onDelete(perform: deleteItems)
//        }
//        .toolbar {
//            #if os(iOS)
//            EditButton()
//            #endif
//
//            Button(action: addItem) {
//                Label("Add Item", systemImage: "plus")
//            }
//        }
//    }
//
//    private func addItem() {
//        withAnimation {
//            let newItem = Item(context: viewContext)
//            newItem.timestamp = Date()
//
//            do {
//                try viewContext.save()
//            } catch {
//                let nsError = error as NSError
//                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
//            }
//        }
//    }
//
//    private func deleteItems(offsets: IndexSet) {
//        withAnimation {
//            offsets.map { items[$0] }.forEach(viewContext.delete)
//
//            do {
//                try viewContext.save()
//            } catch {
//                // Replace this implementation with code to handle the error appropriately.
//                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
//                let nsError = error as NSError
//                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
//            }
//        }
//    }
//}
//
//private let itemFormatter: DateFormatter = {
//    let formatter = DateFormatter()
//    formatter.dateStyle = .short
//    formatter.timeStyle = .medium
//    return formatter
//}()

//MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}

