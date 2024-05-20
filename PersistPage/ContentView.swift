import SwiftUI

struct ContentView: View {
    @AppStorage("isFirstPage") var isFirstPage: Bool = true

    var body: some View {
        if isFirstPage {
            FirstPageView()
        } else {
            SecondPageView()
        }
    }
}

struct FirstPageView: View {
    @AppStorage("isFirstPage") var isFirstPage: Bool = true

    var body: some View {
        VStack {
            Text("Page pertama (1)")
            Button("Go to Page Kedua") {
                isFirstPage = false
            }
        }
        .padding()
    }
}

struct SecondPageView: View {
    @AppStorage("isFirstPage") var isFirstPage: Bool = false

    var body: some View {
        VStack {
            Text("Page kedua (2)")
            Button("Go to Page kesatu") {
                isFirstPage = true
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
