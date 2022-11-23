import SwiftUI

struct ContentView: View {
    @State private var hasOffset = false
    @GestureState var dragOffset = CGSize.zero // CGSize A structure that contains width and height values.
    @State var position = CGSize.zero
    
    var body: some View {
        VStack {
            Image("chess_board")
                .resizable()
                .scaledToFit()
                .padding()
                
            Image("wpawn")
                .resizable()
                .frame(width: 90,height: 90)
                .offset(x: -143,y: -210)
                .offset(x: position.width + dragOffset.width, y: position.height + dragOffset.height)
                .gesture(
                    DragGesture()
                        .updating($dragOffset, body: { (value, state, transaction) in
                            
                            state = value.translation
                        })
                        .onEnded({ (value) in // Remove this section and it will go back to where it starts
                            self.position.height += value.translation.height
                            self.position.width += value.translation.width
                            print("height",position.height) // So you can see coordinates
                            print("width",position.width)
                        })
                )
            
        }
    }
}
