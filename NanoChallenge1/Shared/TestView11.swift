//
//  TestView11.swift
//  NanoChallenge1
//
//  Created by uiskim on 2022/05/04.
//

import SwiftUI

struct TestView11: View {
    @State var changelist: Bool = false
    
    var book: Mybook
    var index: Int = 0
    let screenSize = UIScreen.main.bounds
    var body: some View {
        
        NavigationView {
            ZStack {
                Color.background.ignoresSafeArea()
                ScrollView {
//                    Button {
//                        gohome.toggle()
//                    } label: {
//                        Text("hhhhh")
//                    }

                    Spacer().frame(height: 40)
                    VStack {
                        Text(book.title)
                            .font(.system(size: 20, weight: .bold, design: .rounded))
                            .foregroundColor(.white)
                        InfinityCarouselView()
                            .frame(width: 300, height: 300)
                        
                        HStack{
                            VStack{
                                Button {
                                    changelist = false
                                } label: {
                                    VStack(alignment: .center) {
                                        Text("카테고리")
                                            .font(.system(size: 20, weight: .bold, design: .rounded))
                                            .foregroundColor(.white)
            
                                        
                                        Rectangle()
                                            .fill(Color.white)
                                            .frame(width: screenSize.width*0.35, height: 2)
                                    }
                                    .opacity(changelist ? 0.3 : 1)
                                }

                            }
                            Spacer().frame(width: 30)
                            VStack{
                                Button {
                                    changelist = true
                                } label: {
                                    VStack(alignment: .center) {
                                        Text("오류모음")
                                            .font(.system(size: 20, weight: .bold, design: .rounded))
                                            .foregroundColor(.white)
       
                                        Rectangle()
                                            .fill(Color.white)
                                            .frame(width: screenSize.width*0.35, height: 2)
                                    }
                                    .opacity(changelist ? 1 : 0.3)
                                }
                            }
                        }
                        ForEach(refSet[index]){ref in
                            ReferenceSubCellView(refsubcell: ref)
                                .padding(.horizontal)
                        }
                    }
                    Spacer()
                }
                .navigationBarHidden(true)
            }
        }
        .navigationBarHidden(true)
    }
}

struct TestView11_Previews: PreviewProvider {
    static var previews: some View {
        TestView11(book: .init(backGroundColor: Color("red"), subject: "ddd", title: "ddd", emoji: "📕"))
    }
}
