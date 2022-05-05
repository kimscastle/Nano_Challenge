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
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundColor(book.backGroundColor)
                        .frame(width: 170, height: 170)
                    
                    Text(book.emoji)
                        .font(.system(size: 100, weight: .bold, design: .rounded))
                }
                Text(book.subject)
                    .font(.system(size: 12, weight: .regular, design: .rounded))
                    .frame(width: 170, alignment: .leading)
                    .foregroundColor(.appgray1)
                    .lineLimit(1)
                Text(book.title)
                    .font(.system(size: 15, weight: .bold, design: .rounded))
                    .frame(width: 170, alignment: .leading)
                    .foregroundColor(.white)
                    .opacity(0.7)
                    .lineLimit(1)
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
