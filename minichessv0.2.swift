import SwiftUI

struct ContentView: View {
    @State private var hasOffset = false
    @GestureState var dragOffset = CGSize.zero 
    @State var position = CGSize.zero
    @State var position1 = CGSize.zero
    @State private var hasOffset1 = false
    @GestureState var dragOffset1 = CGSize.zero 
    @State var position2 = CGSize.zero
    @State private var hasOffset2 = false
    @GestureState var dragOffset2 = CGSize.zero 
    @State var position3 = CGSize.zero
    @State private var hasOffset3 = false
    @GestureState var dragOffset3 = CGSize.zero 
    
    
    
    var body: some View {
        ZStack {
            Image("chess_board")
                .resizable()
                .offset(x: 0,y: 0)
                .frame(width:400 ,height: 500)
                .padding()
            
            Image("wpawn")
                .resizable()
                .frame(width: 90,height: 90)
                .offset(x: -150,y: 100)
                .offset(x: position.width + dragOffset.width, y: position.height + dragOffset.height)
                .gesture(
                    DragGesture()
                        .updating($dragOffset, body: { (value, state, transaction) in
                            
                            state = value.translation
                        })
                        .onEnded({ (value) in
                            self.position.height += value.translation.height
                            self.position.width += value.translation.width
                            print("height",position.height)
                            print("width",position.width)
                        })
                )
            Image("wpawn")
                .resizable()
                .frame(width: 90,height: 90)
                .offset(x: -52,y: 100)
                .offset(x: position1.width + dragOffset1.width, y: position1.height + dragOffset1.height)
                .gesture(
                    DragGesture()
                        .updating($dragOffset1, body: { (value, state, transaction) in
                            
                            state = value.translation
                        })
                        .onEnded({ (value) in
                            self.position1.height += value.translation.height
                            self.position1.width += value.translation.width
                            print("height",position1.height)
                            print("width",position1.width)
                        })
                )
            
            Image("wpawn")
                .resizable()
                .frame(width: 90,height: 90)
                .offset(x: 52,y: 100)
                .offset(x: position2.width + dragOffset2.width, y: position2.height + dragOffset2.height)
                .gesture(
                    DragGesture()
                        .updating($dragOffset2, body: { (value, state, transaction) in
                            
                            state = value.translation
                        })
                        .onEnded({ (value) in
                            self.position2.height += value.translation.height
                            self.position2.width += value.translation.width
                            print("height",position2.height)
                            print("width",position2.width)
                        })
                )
            
            Image("wpawn")
                .resizable()
                .frame(width: 90,height: 90)
                .offset(x: 152,y: 100)
                .offset(x: position3.width + dragOffset3.width, y: position3.height + dragOffset3.height)
                .gesture(
                    DragGesture()
                        .updating($dragOffset3, body: { (value, state, transaction) in
                            
                            state = value.translation
                        })
                        .onEnded({ (value) in
                            self.position3.height += value.translation.height
                            self.position3.width += value.translation.width
                            print("height",position3.height)
                            print("width",position3.width)
                        })
                )
            
        }
    }
}
