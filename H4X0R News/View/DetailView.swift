//
//  DetailView.swift
//  H4X0R News
//
//  Created by Faisal Babkoor on 3/13/20.
//  Copyright © 2020 Faisal Babkoor. All rights reserved.
//

import SwiftUI
import WebKit

struct DetailView: View {
    let url: String
    var body: some View {
        WebView(urlString: url)
            .onAppear {
                print(self.url)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}
