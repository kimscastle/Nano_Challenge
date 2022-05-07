//
//  ReferenceSubCellView.swift
//  NanoChallenge1
//
//  Created by uiskim on 2022/05/04.
//

import SwiftUI

struct ReferenceSubCellView: View {
    let screenSize = UIScreen.main.bounds
    let refsubcell: ReferenceSub
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .frame(width: screenSize.width * 0.90, height: 90)
                .foregroundColor(refsubcell.backGroundColor)
            
            HStack{
                Spacer().frame(width: 30)
                Text(refsubcell.title)
                    .font(.system(size: 17, weight: .semibold, design: .rounded))
                    .foregroundColor(.white)
                    .lineLimit(2)
                
                Spacer()
                
                refsubcell.image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                
                Spacer().frame(width: 30)
            }

        }
    }
}

//struct ReferenceSubCellView_Previews: PreviewProvider {
//    @State static var refsubcell: ReferenceSub = ReferenceSub(backGroundColor: .appred, image: Image("testimg"), title: "내이름은 김의성😀")
//    static var previews: some View {
//        ReferenceSubCellView(refsubcell: refsubcell)
//    }
//}
