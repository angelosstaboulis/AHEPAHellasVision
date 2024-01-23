//
//  SocialMedia.swift
//  AHEPAHellasVision
//
//  Created by Angelos Staboulis on 23/1/24.
//

import SwiftUI

struct SocialMedia: View {
    var body: some View {
        VStack{
            ZStack(alignment: .center, content: {
                Text("AHEPA Hellas Social Media").font(.largeTitle)
            })
            Spacer()
            ZStack(alignment: .center, content: {
                    Image("background")
            })
            ZStack(alignment: .center, content: {
                Link(destination: URL(string:"https://www.facebook.com/ahepa.hellas/")!) {
                    Image("facebook")
                }
            })
            ZStack(alignment: .center, content: {
                Link(destination: URL(string:"https://twitter.com/AhepaHellas")!) {
                    Image("twitter")
                }
            })
            ZStack(alignment: .center, content: {
                Link(destination: URL(string:"https://www.ahepahellas.org")!) {
                    Image("internet")
                }
            })
            
        }
    }
}

#Preview {
    SocialMedia()
}
