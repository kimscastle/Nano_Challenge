//
//  AllRefCellView.swift
//  NanoChallenge1 (iOS)
//
//  Created by uiskim on 2022/05/05.
//

import SwiftUI

struct AllRefCellView: View {
    
    let refcell: ReferenceMain
    
    var body: some View {
        HStack{
            refcell.image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
            Spacer().frame(width: 15)
            VStack(alignment: .leading){
                Text(refcell.explain)
                    .font(.system(size: 15, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                    .opacity(0.8)
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)
                Spacer().frame(height: 5)
                Text(refcell.title)
                    .font(.system(size: 10, weight: .medium, design: .rounded))
                    .foregroundColor(.gray)
                    .opacity(0.8)
            }
            Spacer()
        }
        .padding()
    }
}

//struct AllRefCellView_Previews: PreviewProvider {
//    static var previews: some View {
//        AllRefCellView(refcell: .init(backGroundColor: Color(.red), image: Image("redicon"), tag: "", title: "ddddddddddddddd", explain: "ddddddddddddddddddddddddd", url: ""))
//    }
//}
