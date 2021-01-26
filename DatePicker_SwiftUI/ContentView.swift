//
//  ContentView.swift
//  DatePicker_SwiftUI
//
//  Created by Toxumuharu on 2021/01/26.
//

import SwiftUI

struct ContentView: View {
    @State private var date = Date()
    @State private var isShowDatePickerView: Bool = false
    
    var body: some View {
        NavigationView{
            VStack{
                DatePicker("Start Date",
                           selection: $date,
                           displayedComponents: [.date])
                    .datePickerStyle(GraphicalDatePickerStyle())
                    .padding()

                Text(date, style: .date) // December 8, 2020
                Spacer()
            }
            .navigationTitle(Text("DatePicker"))
            
            // SwiftUI 2 function toolbar
            // replaced NavigationBarItems
            // can select .bottombar
//            .toolbar {
//                ToolbarItem(placement: .navigationBarTrailing) {
//                    Button(action: {
//                        self.isShowDatePickerView.toggle()
//                    }) {
//                        Image(systemName: "calendar.badge.plus")
//                    }
//                }
//            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
