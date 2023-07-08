//
//  LastPageView.swift
//  uesless but amusing app
//
//  Created by Isabel Lim on 1/7/23.
//

import SwiftUI

struct LastPageView: View {
    @Binding var wish : String = ""
    @State var previewWish: String = "Something random"
    var body: some View {
       
        Text("Congratulations")
        Text("You managed to become first in \(wish)")
    }
}

struct LastPageView_Previews: PreviewProvider {
    static var previews: some View {
        LastPageView()
    }
}
