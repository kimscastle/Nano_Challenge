//
//  StudyAlertView.swift
//  NanoChallenge1 (iOS)
//
//  Created by uiskim on 2022/05/06.
//
import SwiftUI

struct StudyAlertVIew: View {
    
    let imageset: [Image] = [Image("blueicon"), Image("redicon"), Image("yellowicon"), Image("pinkicon"), Image("purpleicon")]
    @Binding var randomIndex1: Int
    @Binding var studySet: [[Mystudy]]
    @Binding var isAddNewStudy: Bool
    
    let screenSize = UIScreen.main.bounds

    @State var title: String = ""
    @State var date: String = ""
    
    func MakeAddStudy(){
        let newStudy = Mystudy(image: imageset[randomIndex1], title: title, date: date)
        
        study5.append(newStudy)
        studySet[4] = study5
        self.title = ""
        self.date = ""
        //initialize
        self.isAddNewStudy.toggle()
    }
    
    var alertTitle: String = "주제와 날짜를 적어주세요"
    
    var body: some View {
        VStack {
            Image("MainEmoji")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80, height: 80)
            
            Text(alertTitle)
                .font(.system(size: 18, weight: .bold, design: .rounded))
                .frame(width: 250, alignment: .leading)
                .foregroundColor(.white)
                .multilineTextAlignment(.leading)
                .lineLimit(2)

            ZStack(alignment: .leading) {
                if title.isEmpty{
                    Text("공부한 주제를 적어주세요")
                        .font(.system(size: 12, weight: .bold, design: .rounded))
                        .underline()
                        .foregroundColor(.white)
                        .opacity(0.5)
                }
                TextField("", text: $title)
                    .frame(width: 250)
                    .keyboardType(.emailAddress)
            }
            ZStack(alignment: .leading) {
                if date.isEmpty{
                    Text("공부한 날짜를 적어주세요")
                        .font(.system(size: 12, weight: .bold, design: .rounded))
                        .underline()
                        .foregroundColor(.white)
                        .opacity(0.5)
                }
                TextField("", text: $date){
                    MakeAddStudy()
                }
                    .frame(width: 250)
                    .keyboardType(.emailAddress)
            }
            Spacer().frame(height: 20)
            
            VStack{
                Button {
                    MakeAddStudy()
                    randomIndex1 += 1
                    randomIndex1 = randomIndex1%5
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 250, height: 40)
                        Text("공부 기록하기")
                            .font(.system(size: 15, weight: .medium, design: .rounded))
                            .foregroundColor(.white)
                    }
                }
            }
            Spacer()
            
            Button {
                isAddNewStudy.toggle()
            } label: {
                Text("아니요, 안만들래요")
                    .font(.system(size: 12, weight: .medium, design: .rounded))
                    .underline()
                    .foregroundColor(.white)
                    .opacity(0.5)
            }
            Spacer()
        }
        .padding()
        .frame(width: screenSize.width*0.75, height: screenSize.height * 0.37)
        .background(Color.backgroundReverse)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .shadow(color: .black, radius: 10)
    }
}

//struct BookInfoAlertVIew_Previews: PreviewProvider {
//    static var previews: some View {
//        BookInfoAlertVIew(randomIndex: 1, mybooklists: .constant([Mybook(backGroundColor: .appgray2, subject: "subject", title: "title")]), isAddNewBook: .constant(true))
//    }
//}
