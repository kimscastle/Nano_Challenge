//
//  BookInfoAlertVIew.swift
//  NanoChallenge1
//
//  Created by uiskim on 2022/05/04.
//

import SwiftUI

struct BookInfoAlertVIew: View {
    
    let colorset: [Color] = [Color.primaryblue, Color.appyellow, Color.apporange]
    @Binding var randomIndex: Int
    
    let screenSize = UIScreen.main.bounds
    
    @Binding var mybooklists: [Mybook]
    @Binding var isAddNewBook: Bool
    @State var color: String = ""
    @State var subject: String = ""
    @State var title: String = ""
    
    func MakeAddBook(){
        let newBook = Mybook(backGroundColor: colorset[randomIndex], subject: subject, title: title)
        mybooklists.append(newBook)

        self.subject = ""
        self.title = ""
        self.isAddNewBook.toggle()
    }
    
    var alertTitle: String = "책의 분야와 주제를 적어주세요"
    
    var body: some View {
        VStack {
            Image("MainEmoji")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80, height: 80)
            
            Text(alertTitle)
                .font(.system(size: 18, weight: .bold, design: .rounded))
                .frame(width: 250, alignment: .leading)
                .foregroundColor(.white)
                .multilineTextAlignment(.leading)
                .lineLimit(2)

            ZStack(alignment: .leading) {
                if subject.isEmpty{
                    Text("공부하려는 분야를 입력 해주세요")
                        .font(.system(size: 12, weight: .bold, design: .rounded))
                        .underline()
                        .foregroundColor(.white)
                        .opacity(0.5)
                }
                TextField("", text: $subject)
                    .frame(width: 250)
                    .keyboardType(.emailAddress)
            }
            ZStack(alignment: .leading) {
                if title.isEmpty{
                    Text("책 제목을 입력해주세요")
                        .font(.system(size: 12, weight: .bold, design: .rounded))
                        .underline()
                        .foregroundColor(.white)
                        .opacity(0.5)
                }
                TextField("", text: $title){
                    MakeAddBook()
                }
                    .frame(width: 250)
                    .keyboardType(.emailAddress)
            }
            Spacer().frame(height: 20)
            
            VStack{
                Button {
                    MakeAddBook()
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 250, height: 40)
                        Text("나만의 책 만들기")
                            .font(.system(size: 15, weight: .medium, design: .rounded))
                            .foregroundColor(.white)
                    }
                }

            }
            Spacer()
            
            Button {
                isAddNewBook.toggle()
            } label: {
                Text("아니요, 안만들래요")
                    .font(.system(size: 12, weight: .medium, design: .rounded))
                    .underline()
                    .foregroundColor(.white)
                    .opacity(0.5)

            }
            Spacer()

            
        }
        .padding()
        .frame(width: screenSize.width*0.75, height: screenSize.height * 0.37)
        .background(Color.backgroundReverse)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .shadow(color: .black, radius: 10)
    }
}

//struct BookInfoAlertVIew_Previews: PreviewProvider {
//    static var previews: some View {
//        BookInfoAlertVIew(randomIndex: 1, mybooklists: .constant([Mybook(backGroundColor: .appgray2, subject: "subject", title: "title")]), isAddNewBook: .constant(true))
//    }
//}
