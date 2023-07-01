//
//  NextPageView.swift
//  uesless but amusing app
//
//  Created by Isabel Lim on 1/7/23.
//

import SwiftUI
struct NextPageView: View {
    @State private var showView = false
    
    
    var body: some View {
        NavigationView {
            VStack {
                
                Text("'Always nurture your inner childhood dreams, life will become beautiful' \n - Invajy")
                    .multilineTextAlignment(.center)
                    .bold()
                    .background(.yellow)
                    .foregroundColor(.blue)
                    .underline()
                
                    .font(.largeTitle)
                
                Button {
                    print("Pressed")
                    self.showView = true
                } label: {
                    Text("Press for your dreams")
                        .font(.largeTitle)
                        .padding()
                        .frame(width:350, height: 100)
                        .foregroundColor(.white)
                        .background(AngularGradient(colors: [.blue, .mint, .cyan, .blue], center: .center))
                        .cornerRadius(100)
                }
                NavigationLink(destination:LastPageView(), isActive: $showView) { EmptyView()}
            }
        }
    }
}

struct NextPageView_Previews: PreviewProvider {
    static var previews: some View {
        NextPageView()
    }
}
