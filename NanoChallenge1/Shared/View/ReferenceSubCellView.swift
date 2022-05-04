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
            RoundedRectangle(cornerRadius: 20)
                .frame(width: screenSize.width * 0.85, height: 100)
                .foregroundColor(refsubcell.backGroundColor)
            
            HStack{
                Text(refsubcell.title)
                
                Spacer().frame(width: 100)
                
                refsubcell.image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
            }
            .padding()
        }
    }
}

struct ReferenceSubCellView_Previews: PreviewProvider {
    @State static var refsubcell: ReferenceSub = ReferenceSub(backGroundColor: .appred, image: Image("testimg"), title: "내이름은 김의성😀")
    static var previews: some View {
        ReferenceSubCellView(refsubcell: refsubcell)
    }
}
