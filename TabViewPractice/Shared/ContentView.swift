//
//  ContentView.swift
//  Shared
//
//  Created by uiskim on 2022/05/03.
//

//import SwiftUI
//
//struct Layout: View {
//    @State private var selection = 0
//    var body: some View {
//        TabView(selection: $selection) {
//            Text("The First Tab")
//                .tabItem {
//                    Image(systemName: "1.square.fill")
//                    Text("First")
//                }.tag(0)
//            Text("Another Tab")
//                .tabItem {
//                    Image(systemName: "2.square.fill")
//                    Text("Second")
//                }.tag(1)
//            Text("The Last Tab")
//                .tabItem {
//                    Image(systemName: "3.square.fill")
//                    Text("Third")
//                }.tag(2)
//        }
//        .font(.headline)
//    }
//}
//
//struct Layout_Previews: PreviewProvider {
//    static var previews: some View {
//            Layout()
//    }
//}

import SwiftUI

struct Layout: View {
    @State private var selection = 0
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selection) {
                Rectangle().foregroundColor(.red)
                    .frame(width: 200, height: 200, alignment: .center)
                    .tag(0)
                Rectangle().foregroundColor(.blue).tag(1)
                Rectangle().foregroundColor(.green).tag(2)
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            .font(.headline)
            
            Button("next") {
                withAnimation {
                    if (selection > 2) {
                        selection = 0
                    } else {
                        selection += 1
                    }
                }
            }
        }
    }
}

struct Layout_Previews: PreviewProvider {
    static var previews: some View {
            Layout()
    }
}
