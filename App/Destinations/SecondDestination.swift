import SwiftUI
struct SecondDestination: View {
    var body: some View {
        Text("Welcome to the Second Destination!")
            .navigationBarTitle("Second Destination")
    }
}
struct SecondDestination_Previews: PreviewProvider {
    static var previews: some View {
        SecondDestination()
    }
}
