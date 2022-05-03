//
//  BookListCellView.swift
//  NanoChallenge1
//
//  Created by uiskim on 2022/05/02.
//

import SwiftUI

struct BookListCellView: View {
    @Binding var goTest1View: Bool
    let book: Mybook
    
    var body: some View {
        Button {
            if book.title == "SwiftUI Tutorial 끝내기" {
                goTest1View.toggle()
            }
        } label: {
            VStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(book.backGroundColor)
                    .frame(width: 220, height: 220)
                Text(book.subject)
                    .font(.system(size: 15, weight: .regular, design: .rounded))
                    .frame(width: 220, alignment: .leading)
                    .foregroundColor(.appgray1)
                    .lineLimit(1)
                Text(book.title)
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                    .frame(width: 220, alignment: .leading)
                    .foregroundColor(.white)
                    .lineLimit(1)
            }
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
