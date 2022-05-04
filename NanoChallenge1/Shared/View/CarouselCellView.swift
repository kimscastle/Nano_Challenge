//
//  CarouselCellView.swift
//  NanoChallenge1 (iOS)
//
//  Created by uiskim on 2022/05/04.
//

import SwiftUI

struct CarouselCellView: View {
    let mainref: ReferenceMain
    var body: some View {
        VStack(alignment: .leading){
            
            Link(destination: URL(string: mainref.url)!, label: {
                ZStack{
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 300, height: 170)
                    .foregroundColor(mainref.backGroundColor)
                
                mainref.image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 120)
                }
            })

            
            Text(mainref.tag)
                .font(.system(size: 13, weight: .medium, design: .rounded))
                .foregroundColor(.primaryblue)
            
            Text(mainref.title)
                .font(.system(size: 18, weight: .bold, design: .rounded))
                .foregroundColor(.white)
            Text(mainref.explain)
                .font(.system(size: 14, weight: .medium, design: .rounded))
                .lineLimit(2)
                .foregroundColor(.appgray1)
                .opacity(0.8)
        }
    }
}
