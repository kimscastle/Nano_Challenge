//
//  BookListCellView.swift
//  NanoChallenge1
//
//  Created by uiskim on 2022/05/02.
//

import SwiftUI

struct BookListCellView: View {
    
    let book: Mybook
    
    var body: some View {
        VStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(book.backGroundColor)
                .frame(width: 220, height: 220)
            Text(book.summary)
                .font(.system(size: 15, weight: .regular, design: .rounded))
                .foregroundColor(.gray)
            Text(book.explain)
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .foregroundColor(.gray)
        }
        
    }
}
//
//struct BookListCellView_Previews: PreviewProvider {
//    @State static var booklist: MybookList = MybookList(backGroundColor: .yellow, summary: "one", explain: "My name is One")
//    static var previews: some View {
//        BookListCellView(booklist: $booklist)
//    }
//}
