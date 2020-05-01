//
//  DetailView.swift
//  H4CK3R
//
//  Created by Shikhar Kumar on 2/2/20.
//  Copyright © 2020 Shikhar Kumar. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    let url: String?
    
    var body: some View {
        WebView(urlString: url ?? "Hello, World!")
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "")
    }
}
