//
//  TestView11.swift
//  NanoChallenge1
//
//  Created by uiskim on 2022/05/04.
//

import SwiftUI

struct TestView11: View {
//    @Binding var bookName: String
    var index: Int = 1
    var body: some View {
        
        ZStack {
            Color.background.ignoresSafeArea()
            VStack {
                Text("")
                InfinityCarouselView()
                    .frame(width: 300, height: 300)
                ForEach(refSet[index]){ref in
                    ReferenceSubCellView(refsubcell: ref)
                }
            }

        }
    }
}

struct TestView11_Previews: PreviewProvider {
    static var previews: some View {
        TestView11()
    }
}
