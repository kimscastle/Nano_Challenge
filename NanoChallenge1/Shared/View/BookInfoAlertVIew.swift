//
//  BookInfoAlertVIew.swift
//  NanoChallenge1
//
//  Created by uiskim on 2022/05/04.
//

import SwiftUI

struct BookInfoAlertVIew: View {
    
    let screenSize = UIScreen.main.bounds
    
    @Binding var mybooklists: [Mybook]
    @Binding var isAddNewBook: Bool
    @State var color: String = ""
    @State var subject: String = ""
    @State var title: String = ""
    
    func MakeAddBook(){
        let newBook = Mybook(backGroundColor: Color(color), subject: subject, title: title)
        mybooklists.append(newBook)
        
        self.color = ""
        self.subject = ""
        self.title = ""
        self.isAddNewBook.toggle()
    }
    
    var alertTitle: String = "만드려는 책의\n분야와 주제를 적어주세요"
    
    var body: some View {
        VStack {
            Text(alertTitle)
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .foregroundColor(.white)
                .multilineTextAlignment(.leading)
                .lineLimit(2)
            TextField("Color", text: $color)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            TextField("Subject", text: $subject)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            TextField("Title", text: $title){
                MakeAddBook()
            }
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            VStack{
                Button {
                    MakeAddBook()
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(height: 40)
                        Text("나만의 책 만들기")
                            .font(.system(size: 15, weight: .medium, design: .rounded))
                            .foregroundColor(.white)
                    }
                }

            }
        }
        .padding()
        .frame(width: screenSize.width*0.7, height: screenSize.height * 0.5)
        .background(Color.backgroundReverse)
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

//struct BookInfoAlertVIew_Previews: PreviewProvider {
//    static var previews: some View {
//        BookInfoAlertVIew(mybooklists: $mybooklist, isAddNewBook: .constant(true))
//    }
//}
