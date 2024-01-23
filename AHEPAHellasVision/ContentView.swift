//
//  ContentView.swift
//  AHEPAHellasVision
//
//  Created by Angelos Staboulis on 23/1/24.
//

import SwiftUI
import RealityKit
import SwiftUIGIF

struct ContentView: View {
    var menus = ["Home","Videos","AHEPA History","Social Media","Chapters"]
    var body: some View {
        NavigationView {
            List{
                ForEach(menus,id:\.self){item in
                    if item == "Home"{
                        NavigationLink {
                          HomeView()
                        } label: {
                            Text(item)
                        }
                    }else if item == "Videos"{
                        NavigationLink {
                            VideoList()
                        } label: {
                            Text(item)
                        }
                    }else if item == "Social Media"{
                        NavigationLink {
                            SocialMedia()
                        } label: {
                            Text(item)
                        }
                        
                    }else if item == "AHEPA History"{
                        NavigationLink {
                            AHEPAHistory()
                        } label: {
                            Text(item)
                        }
                        
                    }else if item == "Chapters"{
                        NavigationLink {
                            ChaptersView()
                        } label: {
                            Text(item)
                        }
                    }else{
                        NavigationLink {
                            HomeView()
                        } label: {
                            Text(item)
                        }
                    }
                    
                    
                }
            }
            VStack{
                Image("back").ignoresSafeArea(.all)
                    .overlay {
                        VStack{
                            Image("ahepahellas").padding(60.0)
                            Spacer()
                        }
                    }
            }
        }
        
        
    }
}

#Preview(windowStyle: .plain) {
    ContentView()
}
