//
//  InfinityCarouselView.swift
//  NanoChallenge1 (iOS)
//
//  Created by uiskim on 2022/05/04.
//CarouselCellView

import SwiftUI

struct InfinityCarouselView: View {
    var body: some View {
        ZStack {
            Color.background.ignoresSafeArea()
            CarouselView(itemHeight: 300, views: [
                AnyView(CarouselCellView(mainref: refmainlist[0])),
                AnyView(CarouselCellView(mainref: refmainlist[1])),
                AnyView(CarouselCellView(mainref: refmainlist[2])),
                AnyView(CarouselCellView(mainref: refmainlist[3])),
                AnyView(CarouselCellView(mainref: refmainlist[4])),
                AnyView(CarouselCellView(mainref: refmainlist[5])),
                AnyView(CarouselCellView(mainref: refmainlist[6]))
            ])
        }
    }
}

struct InfinityCarouselView_Previews: PreviewProvider {
    static var previews: some View {
        InfinityCarouselView()
    }
}
