//
//  VideoList.swift
//  AHEPAHellasVision
//
//  Created by Angelos Staboulis on 23/1/24.
//

import SwiftUI

struct VideoList: View {
    var videos = [RSSModel(title:"AHEPA Century Of History",link:"https://www.youtube.com/watch?v=0ZF35JN0l9o&pp=ygUFQUhFUEE%3D"),RSSModel(title:"Θυγατέρες της Πηνελόπης Το γυναικείο τμήμα της Οργάνωσης AHEPA / Daughters of Penelope",link:"https://www.youtube.com/watch?v=rYPMWC8D2Aw&pp=ygUFQUhFUEE%3D"),RSSModel(title:"AHEPA 100 Years",link:"https://www.youtube.com/watch?v=0CsONrSLei0&pp=ygUFQUhFUEE%3D"),RSSModel(title: "Ahepa 16 District 25 Convention Komotini", link: "https://www.youtube.com/watch?v=kTNzTjgEU9A")]
    var body: some View {
        VStack{
            ZStack(alignment: .center, content: {
                Text("AHEPA Hellas Videos").font(.largeTitle)
            })
            List(videos,id:\.self){item in
                Link(destination: URL(string: item.link!)!) {
                    Text(item.title!)
                }
            }
        }
    }
}

#Preview {
    VideoList()
}
