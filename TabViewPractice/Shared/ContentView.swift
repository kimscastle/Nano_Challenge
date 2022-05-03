//
//  ContentView.swift
//  Shared
//
//  Created by uiskim on 2022/05/03.
//

import SwiftUI

struct Layout: View {
    var body: some View {
        TabView {
            Text("The First Tab")
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("First")
                }
            Text("Another Tab")
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Second")
                }
            ThirdView()
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("Third")
                }
        }
        .font(.headline)
    }
}

TabView{
    
}

struct Layout_Previews: PreviewProvider {
    static var previews: some View {
            Layout()
    }
}
