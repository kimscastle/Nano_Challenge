//
//  Home.swift
//  SwiftUI_TabView_ref (iOS)
//
//  Created by uiskim on 2022/05/03.
//

import SwiftUI

struct Home: View {
    
    @State var tabs: [Tab] = [
    
        Tab(title: "4+ Tears\nExercising")
        Tab(title: "Fitness Underground")
        Tab(title: "Intense Fitness")
        Tab(title: "Power Fit Kids")
        Tab(title: "Get Outdoors Fitness")
    
    ]
    
    var body: some View {
        
        VStack{
            
            HStack{
                Button {
                    
                } label: {
                    Image(systemName: "chevron.left")
                        .font(.body.bold())
                        .foregroundColor(.white)
                        .frame(width: 40, height: 40)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .strokeBorder(.white.opacity(0.6), lineWidth: 1)
                        )
                }
                
                Spacer()
                
                Button {
                    
                } label: {
                    Text("Skip")
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                }


            }
            .overlay(
                HStack(spacing: 4){
                    
                }
            )
            .padding()
            
            ScrollView(getRect().height < 750 ? .vertical : .init(), showsIndicators: false){
                //defalt 위아래
                VStack(spacing: 20){

                    Text("Prepare Training")
                        .fontWeight(.bold)
                        .foregroundColor(.white.opacity(0.6))
                        .padding(.top, 20)
                        
                    
                    Text("Let's create a \ntrainting plan\nfor you!")
                        .font(.system(size: 38, weight: .bold))
                        .multilineTextAlignment(.center)
                        .lineLimit(3)
                        .foregroundColor(.white)
                    
                    TabView{
                        
                    }
                    .tabViewStyle(.page(indexDisplayMode: .never))
                }
                .padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)

            }
            
            HStack{
                
                Text("Next Step")
                    .font(.title3.bold())
                    .foregroundColor(.white)
                
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "chevron.right")
                        .font(.body.bold())
                        .foregroundColor(.white)
                        .frame(width: 40, height: 40)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .strokeBorder(.white.opacity(0.3), lineWidth: 1)
                        )
                }
                
            }
            .padding(.top, 25)
            .padding(.horizontal, 30)
            .padding(.bottom, 12)
            .background(
            
                Color.black
                    .clipShape(CustomCorner(corners: [.topLeft, .topRight], radius: 38))
                    .ignoresSafeArea()
            
            )
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            LinearGradient(colors: [.BG2, .BG1], startPoint: .bottom, endPoint: .top).ignoresSafeArea()
        )
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

