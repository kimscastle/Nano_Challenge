//
//  BookDetailView.swift
//  NanoChallenge1
//
//  Created by uiskim on 2022/05/04.
//

import SwiftUI

struct BookDetailView: View {
    @Binding var goAllref: Bool
    var body: some View {
        ZStack {
            Color.background.ignoresSafeArea()
            VStack {
                Text("BookDetailView")
                    .font(.title.bold())
                .foregroundColor(.white)
                
                Button {
                    goAllref.toggle()
                } label: {
                    Text("go")
                }

            }
        }
    }
}

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailView(goAllref: .constant(false))
    }
}
