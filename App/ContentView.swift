import SwiftUI
struct ContentView: View {
    @State private var showAlert = false
    
    var body: some View {
        
        NavigationView {
            VStack {
                Spacer()
                Spacer()
                    .frame(height: 1)
            
                // HStack containing the buttons
                HStack(spacing: 20) {
                    NavigationLink(destination: FirstDestination()) {
                        Text("Left Button")
                            .padding(.horizontal, 20)
                            .padding(.vertical, 10)
                            .font(.headline)
                            .foregroundColor(.white)
                            .background(Color.red)
                            .cornerRadius(10)
                    }
                    
                    NavigationLink(destination: SecondDestination()) {
                        Text("Middle Button")
                            .padding(.horizontal, 20)
                            .padding(.vertical, 10)
                            .font(.headline)
                            .foregroundColor(.white)
                            .background(Color.green)
                            .cornerRadius(10)
                    }
                    
                    NavigationLink(destination: ThirdDestination()) {
                        Text("Right Button")
                            .padding(.horizontal, 20)
                            .padding(.vertical, 10)
                            .font(.headline)
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                }
                .padding(.horizontal)
            }
            .background(Image("purple")
                .opacity(0.8))
            //image
            // main view code
            .navigationBarTitle("Main View")
            .navigationBarItems(trailing: Button(action: {
                self.showAlert = true
            }) {
                Image(systemName: "arrow.turn.down.left")
            })
            .alert(isPresented: $showAlert) { //return code
                Alert(title: Text("Go Back"), message: Text("Are you sure you want to go back?"), primaryButton: .default(Text("Yes")), secondaryButton: .cancel(Text("No")))
            }
        }
    }
}
struct DestinationView: View {
    var title: String
    var description: String
    
    var body: some View {
        VStack {
            Text("Destination: \(title)")
                .font(.title)
            Text(description)
            Spacer()
        }
        .padding()
        .navigationBarTitle(title)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
