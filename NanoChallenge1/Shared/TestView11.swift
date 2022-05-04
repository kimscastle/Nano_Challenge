//
//  TestView11.swift
//  NanoChallenge1
//
//  Created by uiskim on 2022/05/04.
//

import SwiftUI

struct TestView11: View {
    var body: some View {
        
        ZStack {
            Color.background.ignoresSafeArea()
            VStack {
                ForEach(refsublist1){ref in
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
