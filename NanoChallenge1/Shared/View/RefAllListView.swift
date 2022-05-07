//
//  BookDetailView.swift
//  NanoChallenge1
//
//  Created by uiskim on 2022/05/04.
//

import SwiftUI

struct RefAllListView: View {

    @Binding var goAllref: Bool

    var body: some View {
        NavigationView {
            ZStack {
                Color.background.ignoresSafeArea(.all)
                ScrollView {
                    HStack {
                        Button {
                            goAllref.toggle()
                        } label: {
                            VStack {
                                Image(systemName: "chevron.left")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(.white)
                                    .opacity(0.7)
                            }
                        }
                        Spacer().frame(width: 330)
                    }
                    Spacer().frame(height: 30)
                    VStack(alignment: .leading) {
                        VStack(alignment: .leading) {
                            Text("다양한 레퍼런스를\n모아보세요")
                                .font(.system(size: 30, weight: .bold, design: .rounded))
                                .foregroundColor(.white)
                            Spacer().frame(height: 10)
                            Text("터치하면 URL로 이동합니다")
                                .font(.system(size: 15, weight: .bold, design: .rounded))
                                .foregroundColor(.white)
                                .opacity(0.6)
                        }
                        .padding()
                        ForEach(refalllist){index in
                            Divider()
                            AllRefCellView(refcell: index)
                        }
                    }
                }
                .padding()
                .navigationBarHidden(true)
            }
        }
    }
}

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RefAllListView(goAllref: .constant(false))
    }
}
