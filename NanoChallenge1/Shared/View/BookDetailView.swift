//
//  BookDetailView.swift
//  NanoChallenge1
//
//  Created by uiskim on 2022/05/04.
//

import SwiftUI

struct BookDetailView: View {
    var body: some View {
        ZStack {
            Color.background.ignoresSafeArea()
            Text("BookDetailView")
                .font(.title.bold())
                .foregroundColor(.white)
        }
    }
}

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailView()
    }
}
