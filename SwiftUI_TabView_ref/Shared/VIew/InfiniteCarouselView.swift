//
//  InfiniteCarouselView.swift
//  SwiftUI_TabView_ref (iOS)
//
//  Created by uiskim on 2022/05/03.
//

import SwiftUI

struct InfiniteCarouselView: View {
    
    @Binding var tabs: [Tab]
    @Binding var currentIndex: Int
    
    @State var fakeIndex: Int = 0
    
    var body: some View {
        TabView{
        //TabView에서 아이콘을 눌러서 쓸거면 상관이없는데 숫자마다 바뀔거면 selction: State변수를 넣어줘야한다
        }
    }
}
