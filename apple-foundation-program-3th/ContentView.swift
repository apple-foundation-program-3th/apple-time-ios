import SwiftUI

struct ContentView: View {
    
    @State var oaisin: Bool = true
    
    var body: some View {
        ZStack {
            HomeView()
            
            if (oaisin) {
                OnboardView()
            }
        }
        .onAppear() {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
                oaisin = false
            }
        }
    }
}

