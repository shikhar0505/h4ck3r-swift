//
//  ContentView.swift
//  H4CK3R
//
//  Created by Shikhar Kumar on 2/2/20.
//  Copyright © 2020 Shikhar Kumar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.hits) { hit in
                NavigationLink(destination: DetailView(url: hit.url)) {
                    HStack {
                        Text(String(hit.points))
                        Text(hit.title)
                    }
                }
            }
            .navigationBarTitle("H4CK3R News")
        }
        .onAppear {
            self.networkManager.fetchLatestNews()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
