//
//  LastPageView.swift
//  uesless but amusing app
//
//  Created by Isabel Lim on 1/7/23.
//

import SwiftUI

struct LastPageView: View {
    var wish : String = ""
    @State var previewWish: String = "Something random"
    var body: some View {
        
        Text("Congratulations")
        Text("You managed to become first in")
        Text("\(wish)")
            .font(.largeTitle)
    }
}

struct LastPageView_Previews: PreviewProvider {
    static var previews: some View {
        LastPageView(wish: "Some random thing")
    }
}
