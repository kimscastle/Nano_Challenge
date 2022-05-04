//
//  ContentView.swift
//  Shared
//
//  Created by uiskim on 2022/05/02.
//

//import SwiftUI
//
//struct ContentView: View {
//    
//    @State private var mybooklists: [Mybook] = [
//        Mybook(backGroundColor: .yellow, summary: "one", explain: "My name is One"),
//        Mybook(backGroundColor: .green, summary: "two", explain: "My name is Two"),
//        Mybook(backGroundColor: .blue, summary: "three", explain: "My name is Three"),
//        Mybook(backGroundColor: .black, summary: "four", explain: "My name is Four")
//    ]
//    
//    @State var isAddNewBook = false
//    
//    @State var color = ""
//    @State var summary = ""
//    @State var explain = ""
//    
//    func MakeAddBook(){
//        let newBook = Mybook(backGroundColor: Color(color), summary: summary, explain: explain)
//        mybooklists.append(newBook)
//        
//        self.color = ""
//        self.summary = ""
//        self.explain = ""
//        self.isAddNewBook.toggle()
//    }
//    
//    var body: some View {
//
//        VStack {
//            ScrollView(.horizontal){
//                HStack {
//                    ForEach(mybooklists) {
//                        BookListCellView(book: $0)
//                    }
//                    Button {
//                        isAddNewBook = true
//                    } label: {
//                        Circle()
//                            .frame(width: 40, height: 40)
//                            .foregroundColor(.gray)
//                    }
//                }
//            }
//            
//            if isAddNewBook {
//                VStack(spacing: 30){
//                    TextField("color", text: $color)
//                    TextField("summary", text: $summary)
//                    TextField("explain", text: $explain){
//                        MakeAddBook()
//                    }
//                    //enter를 누르면 할 action
//                }
//                .padding()
//                
//                Button(action: {
//                    MakeAddBook()
//                }) {
//                    Text("Save")
//                }
//            }
//        }
//    }
//}
//
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
//
