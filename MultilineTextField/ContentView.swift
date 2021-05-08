import SwiftUI

struct ContentView: View {
    
    @State var text = ""
    
    // Auto Updating TextBox Height...
    @State var containerHeight: CGFloat = 0
    
    var body: some View {
        AutoSizingTF(hint: "Enter Message", text: $text,containerHeight: $containerHeight, onEnd: {
            
            // Do when keyboard closed...
            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
        })
            .padding(.horizontal)
            // Your Max Height Here....
            .frame(height: containerHeight <= 120 ? containerHeight : 120)
        .background(Color.primary.opacity(0.04).ignoresSafeArea())
            .cornerRadius(10)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
