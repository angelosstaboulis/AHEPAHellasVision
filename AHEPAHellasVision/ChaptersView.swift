//
//  ChaptersView.swift
//  AHEPAHellasVision
//
//  Created by Angelos Staboulis on 23/1/24.
//

import SwiftUI

struct ChaptersView: View {
    @StateObject var chapters = AHEPAViewModel()
    @State var chaptersList:[RSSModel] = []
    var body: some View {
        VStack{
            ZStack(alignment: .center, content: {
                Text("AHEPA Chapters").font(.largeTitle)
            })
            List(chaptersList,id:\.self){item in
                Link(destination:
                        URL(string: item.link!)!,
                label: {
                        Text(item.title!)
                })
            }.onAppear(perform: {
                chaptersList.append(contentsOf: chapters.fillItems())
            })
        }
    }
   
}

#Preview(windowStyle: .automatic) {
    ChaptersView()
}
