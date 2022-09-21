//
//  StudyCellView.swift
//  NanoChallenge1 (iOS)
//
//  Created by uiskim on 2022/05/05.
//

import SwiftUI

struct StudyCellView: View {
    
    let mystudy: Mystudy
    
    var body: some View {
        HStack{
            mystudy.image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
            Spacer().frame(width: 15)
            VStack(alignment: .leading){
                Text(mystudy.title)
                    .font(.system(size: 17, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                    .opacity(0.8)
                    .lineLimit(1)
                Spacer().frame(height: 5)
                Text(mystudy.date)
                    .font(.system(size: 12, weight: .medium, design: .rounded))
                    .foregroundColor(.gray)
                    .opacity(0.8)
            }
            Spacer()
        }
        .padding()
    }
}

struct StudyCellView_Previews: PreviewProvider {
    static var previews: some View {
        StudyCellView(mystudy: .init(image: Image("erroricon"), title: "aaaaaaaaaaaaaaaaa", date: "aaaaaaaaaaaaaaaaaaaaa"))
    }
}
