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
    
    
    @State var randomIndex: Int = 0
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
                            .font(.system(size: 17, weight: .bold, design: .rounded))
                            .foregroundColor(.appgray1)
                        Text("나만의 책을\n만들고 채워나가 보세요")
                            .font(.system(size: 25, weight: .bold, design: .rounded))
                            .foregroundColor(.white)
                            .lineLimit(2)
                    }
                    .padding()
                    Spacer()
                    ScrollView(.horizontal) {
                        HStack(spacing:20) {
                            ForEach(mybooklists, id: \.self) { book in
                                NavigationLink(destination: TestView11(index: mybooklists.firstIndex(of: book)!)){
                                    BookListCellView(book: book)
                                }
                            }
                            Button {
                                isAddNewBook.toggle()
                                randomIndex += 1
                                randomIndex = randomIndex%3
                            } label: {
                                Circle()
                                    .frame(width: 50, height: 50)
                            }

                        }
                    }
                    
                    Spacer()

                    
                    
                    VStack(alignment: .leading) {
                        Text("다양한 레퍼런스")
                            .font(.system(size: 25, weight: .bold, design: .rounded))
                            .foregroundColor(.white)
                            .padding()
                        
                        Spacer().frame(height: 0)
                        ForEach(refsublist1){ref in
                            ReferenceSubCellView(refsubcell: ref)
                        }
                    }
                }
                .padding()
                
                if isAddNewBook {
                    BookInfoAlertVIew(randomIndex: $randomIndex, mybooklists: $mybooklists, isAddNewBook: $isAddNewBook)
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
