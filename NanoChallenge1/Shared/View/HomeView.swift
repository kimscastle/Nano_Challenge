//
//  HomeView.swift
//  NanoChallenge1
//
//  Created by uiskim on 2022/05/03.
//

import SwiftUI

struct HomeView: View {
    
    @State private var mybooklists: [Mybook] = [
        Mybook(backGroundColor: .appyellow, subject: "swiftUI", title: "SwiftUI Tutorial 끝내기"),
        Mybook(backGroundColor: .appbrown1, subject: "swiftUI", title: "다양한 SwiftUI Examples"),
        Mybook(backGroundColor: .appbrown2, subject: "Python", title: "Python의 기초와 응용"),
        Mybook(backGroundColor: .appgray2, subject: "Django", title: "Django로 배우는 백엔드 기초")
    ]
    
    
    
    @State var isAddNewBook = false
    @State var goTest1View = false
//    @State var index: Int
    
    @Binding var color: String
    @Binding var subject: String
    @Binding var title: String
    
    var body: some View {

        NavigationView {
            ZStack{
                Color.background.ignoresSafeArea(.all)
                
                VStack(alignment: .leading){
                    VStack(alignment: .leading, spacing: 0){
                        Text("My Own Book")
                            .font(.title3.bold())
                            .foregroundColor(.appgray1)
                        Text("나만의 책을\n만들고 채워나가 보세요")
                            .font(.system(size: 25, weight: .bold, design: .rounded))
                            .foregroundColor(.white)
                    }
                    
                    ScrollView(.horizontal) {
//                        NavigationLink(destination: TestView11()){
//                            ForEach(mybooklists) {
//                                BookListCellView(book: $0)
//                            }
//                        }
                        LazyHGrid(rows: [GridItem(.adaptive(minimum: 220))]) {
                            ForEach(mybooklists, id: \.self) { book in
                                NavigationLink(destination: TestView11()){
                                    BookListCellView(book: book)
                                }
                            }
                        }
                    }
    //                ScrollView(.horizontal){
    //                    HStack {
    //                        ForEach(mybooklists) {
    //                            BookListCellView(book: $0)
    //                        }
    //                        Button {
    //                            isAddNewBook = true
    //                        } label: {
    //                            Circle()
    //                                .frame(width: 40, height: 40)
    //                                .foregroundColor(.gray)
    //                        }
    //                    }
    //                }
                    
                }
                .padding()
                
                if isAddNewBook {
    //                    VStack(spacing: 30){
    //                        TextField("color", text: $color)
    //                            .foregroundColor(.white)
    //                        TextField("summary", text: $summary)
    //                        TextField("explain", text: $explain){
    //                            MakeAddBook()
    //                        }
    //                        //enter를 누르면 할 action
    //                    }
    //                    .padding()
    //
    //                    Button(action: {
    //                        MakeAddBook()
    //                    }) {
    //                        Text("Save")
    //                    }
                    BookInfoAlertVIew(mybooklists: $mybooklists, isAddNewBook: $isAddNewBook)
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(color: .constant(""), subject: .constant(""), title: .constant(""))
    }
}
