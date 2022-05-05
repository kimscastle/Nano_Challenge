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
    @State var goAllref: Bool = false
    @State var randomIndex: Int = 0
    @State var isAddNewBook = false
    @State var goTest1View = false
//    @State var index: Int
//    let book: Mybook
    
    @Binding var color: String
    @Binding var subject: String
    @Binding var title: String
    
    var body: some View {

        NavigationView {
            ZStack {
                Color.background.ignoresSafeArea(.all)
                ScrollView{
                    
                    VStack(alignment: .leading){
                        VStack(alignment: .leading, spacing: 0){
                            Text("My Own Book")
                                .font(.system(size: 17, weight: .bold, design: .rounded))
                                .foregroundColor(.appgray1)
                            Text("나만의 책을\n만들고 채워나가 보세요")
                                .font(.system(size: 22, weight: .bold, design: .rounded))
                                .foregroundColor(.white)
                                .lineLimit(2)
                        }
                        .padding(.leading, 22)
                        .padding(.bottom, 30)
                        .padding(.top, 20)
                        Spacer()
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(alignment: .top, spacing:20) {
                                ForEach(mybooklists, id: \.self) { book in
                                    NavigationLink(destination: TestView11(book: book, index: mybooklists.firstIndex(of: book)!).navigationBarBackButtonHidden(true)){
                                        BookListCellView(book: book)
                                        
                                    }
                                    
                                }
                                ZStack {
                                    RoundedRectangle(cornerRadius: 15)
                                        .frame(width: 170, height: 210)
                                        .foregroundColor(.backgroundReverse)
                                    VStack {
                                        Spacer().frame(height: 0)
                                        Image("MainEmoji")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 50, height: 50)
                                        
                                        Text("공부한 내용을\n나만의 방식대로 정리해봐요")
                                            .font(.system(size: 12, weight: .semibold, design: .rounded))
                                            .foregroundColor(.white)
                                        
                                        Spacer().frame(height: 10)
                                        
                                        HStack(spacing: 5){
                                            Text("📘")
                                                .font(.title2)
                                            VStack(alignment: .leading) {
                                                Text("나만의 책 만들기")
                                                    .font(.system(size: 8, weight: .medium, design: .rounded))
                                                    .foregroundColor(.appgray1)
                                                Text("분야와 책 제목을 적어봐요")
                                                    .font(.system(size: 10, weight: .bold, design: .rounded))
                                                    .foregroundColor(.buttonblue)
                                            }
                                        }
                                        
                                        Spacer().frame(height: 20)
                                        
                                        ZStack {
                                            Button {
                                                isAddNewBook.toggle()
                                                randomIndex += 1
                                                randomIndex = randomIndex%3
                                            } label: {
                                                RoundedRectangle(cornerRadius: 10)
                                                    .frame(width: 140, height: 30)
                                                    .foregroundColor(.buttonblue)
                                            }
                                            Text("한번 만들어볼게요")
                                                .font(.system(size: 10, weight: .semibold, design: .rounded))
                                                .foregroundColor(.white)
                                        }
                                    }
                                }
                            }
                        }
                        
                        Spacer().frame(height: 30)

                        
                        
                        VStack(alignment: .leading) {
                            Text("다양한 레퍼런스")
                                .font(.system(size: 22, weight: .bold, design: .rounded))
                                .foregroundColor(.white)
                                .padding(.leading, 22)
                                .padding(.bottom, 7)
                            
                            Spacer().frame(height: 0)
                            ForEach(refsublist1){ref in
                                ReferenceSubCellView(refsubcell: ref)
                            }
                            Spacer().frame(height: 15)
                            
                            Button {
                                goAllref.toggle()
                            } label: {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 17)
                                        .frame(width: 355, height: 55, alignment: .center)
                                        .foregroundColor(.buttonColor)
                                        .padding(.horizontal)
                                    Text("모두보기")
                                        .font(.system(size: 20, weight: .medium, design: .rounded))
                                        .foregroundColor(.gray)
                                }
                            }

                        }
                    }
                    .padding()
                }
                .navigationBarHidden(true)
                if isAddNewBook {
                    BookInfoAlertVIew(randomIndex: $randomIndex, mybooklists: $mybooklists, isAddNewBook: $isAddNewBook)
                }
                if goAllref{
                    BookDetailView(goAllref: $goAllref)
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(color: .constant(""), subject: .constant(""), title: .constant(""))
    }
}
