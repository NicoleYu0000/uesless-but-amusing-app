//
//  ContentView.swift
//  uesless but amusing app
//
//  Created by Nicole Yu on 2023/6/24.
//

import SwiftUI

struct ContentView: View {
    @State private var wish : String = ""
    @State private var showView = false
    var body: some View {
        NavigationView {
            VStack (spacing: 50){
                Text("What do you want to be the best at?")
                    .multilineTextAlignment(.center)
                    .font(.system(size: 30))
                    .padding()
                TextField("Enter your wish", text: $wish)
                    .multilineTextAlignment(.center)
                    .font(.system(size: 20))
                Button {
                    print("Saving your wish")
                    self.showView = true
                } label : {
                    Text("Enter")
                        .padding()
                        .frame(width: 300, height: 60)
                        .foregroundColor(.white)
                        .background(.blue)
                        .font(.system(size: 50))
                        .cornerRadius(20)
                    
                }
                HStack{
                    Image("dream")
                }
                NavigationLink(destination: NextPageView(), isActive: $showView) { EmptyView() }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      
        ContentView()
       
    }
}
